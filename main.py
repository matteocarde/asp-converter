import argparse
import os
import sys
import subprocess
import time
import json

from wbo2dimacs import read_opb, write_cnf

import subprocess
import threading

""" Run system commands with timeout
"""


class Result:
    name: str
    optimum: int
    status: str
    time: float

    def __init__(self, name, optimum, status, time):
        self.name = name
        self.optimum = optimum
        self.status = status
        self.time = time


class Command(object):
    def __init__(self, cmd):
        self.cmd = cmd
        self.process = None
        self.out = None

    def run_command(self, capture=False):
        if not capture:
            self.process = subprocess.Popen(self.cmd, shell=True)
            self.process.communicate()
            return
        # capturing the outputs of shell commands
        self.process = subprocess.Popen(self.cmd, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                        stdin=subprocess.PIPE)
        out, err = self.process.communicate()
        if len(out) > 0:
            self.out = out.splitlines()
        else:
            self.out = None

    # set default timeout to 2 minutes
    def run(self, capture=False, timeout=120):
        start = time.time()
        thread = threading.Thread(target=self.run_command, args=(capture,))
        thread.start()
        thread.join(timeout)
        if thread.is_alive():
            print('Command timeout, kill it: ' + self.cmd)
            self.process.terminate()
            thread.join()
        end = time.time()
        return self.out, end-start


def parseResult(name, result, time):
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

conf_path = os.getcwd()
sys.path.append(conf_path)

parser = argparse.ArgumentParser()
parser.add_argument("-i", "--input", help="The ASP encoding to be converted")
args = parser.parse_args()

CLINGO = "clingo"
DLV = "dlv2"
MAXHS = "maxhs"
OPENWBO = "open-wbo"
GUROBI = "gurobi_cl"

TIMEOUT = 30

# 1. Create wbo file
# Command: clingo file.lp --output=smodels | dlv2 --mode=wasp --pre=wbo > file.opb
# We rename it as .opb since Gurubi needs this file format
file = open(f"{args.input}.opb", "w")
clingo = subprocess.run([CLINGO, args.input, "--output=smodels"], stdout=subprocess.PIPE)
dlv = subprocess.run([DLV, "--mode=wasp", "--pre=wbo"], input=clingo.stdout, stdout=file)
file.close()

# 2. Trasform wbo file in cnf with wbo2dimacs.py library
aux, soft, hard = read_opb(f"{args.input}.opb")
write_cnf(f"{args.input}.cnf", aux, soft, hard)

results = list()

# 3. Run clingo in single level mode with the wbo file
(result, cmdTime) = Command(f"clingo --mode=clasp {args.input}.opb  --opt-strategy=usc,k,0,4 --opt-usc-shrink=bin").run(timeout=TIMEOUT, capture=True)
results.append(parseResult("CLINGO", result, cmdTime))

# 4. Run maxhs
(result, cmdTime) = Command(f"maxhs {args.input}.cnf").run(timeout=TIMEOUT, capture=True)
results.append(parseResult("MAXHS", result, cmdTime))

# 5. Run openWbo
(result, cmdTime) = Command(f"open-wbo {args.input}.cnf").run(timeout=TIMEOUT, capture=True)
results.append(parseResult("OPENWBO", result, cmdTime))


data = dict()
for result in results:
    data[result.name] = {
        "name": result.name,
        "time": result.time,
        "optimum": result.optimum,
        "status": result.status
    }


json_string = json.dumps(data, indent=2)
f = open(f"{args.input}.json", "w")
f.write(json_string)
f.close()

