import argparse
import os
import sys

from classes.Converter import Converter

conf_path = os.getcwd()
sys.path.append(conf_path)

parser = argparse.ArgumentParser()
parser.add_argument("-f", "--folder", help="The folder in which the real benchmarks are")
args = parser.parse_args()


converter = Converter()

for subf in os.listdir(args.folder):
    if subf == ".DS_Store": continue
    for phase in os.listdir(args.folder + "/" + subf):
        if phase == ".DS_Store": continue
        print(f"{subf}/{phase}:")
        converter.testEncoding("/".join([args.folder, subf, phase, "encoding.lp"]), phase == "allocation")