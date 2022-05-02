import sys
import json
import subprocess

from classes.Result import Result
from classes.Command import Command


class Converter:

    CLINGO = "clingo"
    DLV = "dlv2"
    MAXHS = "maxhs"
    OPENWBO = "open-wbo"
    GUROBI = "gurobi_cl"

    TIMEOUT = 30

    def __init__(self):
        pass

    def parseResult(self, name, result, time):
        bestOptimum = -1
        resultStatus = "UNKNOWN"
        for r in result:
            strR = str(r)
            if strR[2] == "o":
                bestOptimum = int(strR[4:-1])
            if strR[2] == "s":
                resultStatus = strR[4:-1]
        if bestOptimum > 0 and resultStatus == "UNKNOWN":
            resultStatus = "SATISFIABLE"
        return Result(name=name, time=time, status=resultStatus, optimum=bestOptimum)

    def testEncoding(self, file, testROM=False):
        print("-- 1. Create wbo file")
        # Command: clingo file.lp --output=smodels | dlv2 --mode=wasp --pre=wbo > file.opb
        # We rename it as .opb since Gurubi needs this file format
        fileOpb = open(f"{file}.opb", "w")
        clingo = subprocess.run([self.CLINGO, file, "--output=smodels"], stdout=subprocess.PIPE)
        dlv = subprocess.run([self.DLV, "--mode=wasp", "--pre=wbo"], input=clingo.stdout, stdout=fileOpb)
        fileOpb.close()

        print("-- 2. Trasform wbo file in cnf with wbo2dimacs.py library")
        (result, cmdTime, couldNotCreateCnf) = Command(f"python3 wbo2dimacs.py {file}.opb {file}.cnf").run(
            timeout=self.TIMEOUT * 2)
        if couldNotCreateCnf:
            print("!!!!! Could not create .cnf file", file=sys.stderr)
        results = list()

        print("-- 3. Run clingo in single level mode with the wbo file and USC")
        (result, cmdTime, wasKilled) = Command(
            f"clingo --mode=clasp {file}.opb  --opt-strategy=usc,k,0,4 --opt-usc-shrink=bin").run(timeout=self.TIMEOUT,
                                                                                                  capture=True)
        results.append(self.parseResult("CLINGO-USC", result, cmdTime))

        if testROM:
            print("-- 3.2 Run clingo in single level mode with the wbo file and ROM")
            (result, cmdTime, wasKilled) = Command(
                f"clingo --mode=clasp {file}.opb  --restart-on-model").run(timeout=self.TIMEOUT, capture=True)
            results.append(self.parseResult("CLINGO-ROM", result, cmdTime))

        if not couldNotCreateCnf:
            print("-- 4. Run maxhs")
            (result, cmdTime, wasKilled) = Command(f"maxhs {file}.cnf").run(timeout=self.TIMEOUT, capture=True)
            results.append(self.parseResult("MAXHS", result, cmdTime))

            print("-- 5. Run openWbo")
            (result, cmdTime, wasKilled) = Command(f"open-wbo {file}.cnf").run(timeout=self.TIMEOUT, capture=True)
            results.append(self.parseResult("OPENWBO", result, cmdTime))

        data = dict()
        data["couldNotCreateCnf"] = couldNotCreateCnf
        data["results"] = dict()
        for result in results:
            data["results"][result.name] = {
                "name": result.name,
                "time": result.time,
                "optimum": result.optimum,
                "status": result.status
            }

        json_string = json.dumps(data, indent=2)
        f = open(f"{file}.json", "w")
        f.write(json_string)
        f.close()

        print("-- Wrote json file")