import sys
import re
from pypblib import pblib

#
###############################################################################

DEFAULT_FILE_NAME = "test_wcnf.cnf"
op = {'<=': pblib.LEQ, '>=': pblib.GEQ, '=': pblib.BOTH }
_sum_soft_weights = 1

#
###############################################################################

def read_opb(path):

    config = pblib.PBConfig()
    aux = pblib.AuxVarManager(1)
    hard = pblib.VectorClauseDatabase(config)
    soft = []
    pb2 = pblib.Pb2cnf(config)

    f = open(path,'r')
    for line in f:

        if len(line) == 0: continue
        if '#variable=' in line:
            aux.reset_aux_var_to(int(re.findall(r"\d+", line)[0]) + 1)
        if line[0] == '*': continue
        if 'min:' in line:
            soft = re.findall(r"[-\d]+", line)
            continue

        # This is linear equation
        lq = re.findall(r"[-\d|>=|<=|=]+", line)
        wl = [pblib.WeightedLit(int(lq[i+1]), int(lq[i])) for i,e in enumerate(lq[:-2]) if(i%2 == 0)]

        pb2.encode(pblib.PBConstraint(wl, op[lq[-2]], int(lq[-1])), hard, aux)

    f.close()

    return aux, soft, hard
#
###############################################################################

def write_cnf(file_path, aux, soft, hard):

    with open(file_path, 'w') as f:
        for i, e in enumerate(soft):
            if(i%2 == 0):
                global _sum_soft_weights
                _sum_soft_weights += abs(int(soft[i]))
                
        f.write("p wcnf " + str(aux.get_biggest_returned_auxvar()) + " " + str(hard.get_num_clauses() + int(len(soft)/2)) \
               + " " + str(_sum_soft_weights) + '\n')
        for i, e in enumerate(soft):
            if(i%2 == 0):
                #_sum_soft_weights += abs(int(soft[i]))
                if(int(soft[i]) < 0):
                    f.write(str(abs(int(soft[i]))) + " " + str(int(soft[i+1])) + " 0\n")
                else:
                    f.write(str(abs(int(soft[i]))) + " " + str(-int(soft[i+1])) + " 0\n")

        v_form = hard.get_clauses()

        for c in v_form:
            tmp = ""
            for i in c:
                tmp += " " + str(i);
            f.write(str(_sum_soft_weights) + " " + tmp + " 0\n")

    f.close()
#
###############################################################################


if __name__ == '__main__':

    file_path = DEFAULT_FILE_NAME
    if len(sys.argv) > 2:
        file_path = sys.argv[2]

    aux, soft, hard = read_opb(sys.argv[1])
    write_cnf(file_path, aux, soft, hard)
