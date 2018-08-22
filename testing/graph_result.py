import matplotlib
import matplotlib.pyplot as plt
import subprocess
import time
import os
from os.path import isfile, join
import re
import numpy as np

GENERALIZE_TIME = 3     # 1
POLICY_LENGTH = 12      # 2
SOLVE_TIME = 30         # 3
LOOM_MEMORY = 35        # 4
TRANSLATE_TIME = 40     # 5
PLAN_LENGTH = 45        # 6
LAMA_FIRST_TIME = 57    # 7
LAMA_MEMORY = 59        # 8

IMPORTANT_LINES = [3, 12, 30, 35, 40, 45, 47, 59]

problem_sizes = []
generalize_times = []
policy_lengths = []
solve_times = []
loom_memory = []
translate_times = []
plan_lengths = []
lama_times = []
lama_memory = []


# TODO: CHANGE THIS FOR DIFFERENT DOMAIN
def get_problem_size(problem_name):
    size = re.findall("\d+", problem_name)[0]
    return int(size)

def parse_file(filename):
    result = []
    with open(filename) as f:
        lines = f.readlines()
    for i in IMPORTANT_LINES:
        line = lines[i].strip()
        metric = re.findall("[\d.]+", line)[0]
        result.append(float(metric))
    return result

if __name__ == '__main__':
    mypath = '/home/xiyan/git/csc494/testing/TEMP-RESULT'
    txtfiles = [f for f in os.listdir(mypath) if isfile(join(mypath, f))]
    all_data = []
    txtfiles.sort(key = lambda x: get_problem_size(x))
    for f in txtfiles:
        size = get_problem_size(f)
        parsed_data = parse_file(join(mypath, f))
        all_data.append([size] + parsed_data)

    all_data = np.array(all_data)
    all_data = np.transpose(all_data)
    print(all_data)

    plt.plot(all_data[0], all_data[1], label='Generalize Time')
    plt.title('LOOM Generalize Time v.s. Problem Size')
    plt.xlabel('Problem Size')
    plt.ylabel('Time (s)')
    plt.legend()
    plt.tight_layout()
    plt.savefig('loom-generalize')
    plt.show()

    plt.plot(all_data[0], all_data[2], label='LOOM Policy Length')
    plt.plot(all_data[0], all_data[6], label='LAMA-FIRST Plan Length')
    plt.title('Length v.s. Problem Size')
    plt.xlabel('Problem Size')
    plt.ylabel('Length')
    plt.legend()
    plt.tight_layout()
    plt.savefig('plan-vs-policy')
    plt.show()

    plt.plot(all_data[0], all_data[4], label='LOOM Peak Memory')
    plt.plot(all_data[0], all_data[8], label='LAMA-FIRST Peak Memory')
    plt.title('Memory v.s. Problem Size')
    plt.xlabel('Problem Size')
    plt.ylabel('Memory (KB)')
    plt.legend()
    plt.tight_layout()
    plt.savefig('memory')
    plt.show()

    loom_times = np.add(all_data[1], all_data[3])
    lama_times = np.add(all_data[5], all_data[7])
    print(loom_times)
    print(lama_times)
    plt.plot(all_data[0], loom_times, label='LOOM')
    plt.plot(all_data[0], lama_times, label='LAMA-FIRST')
    plt.title('Time v.s. Problem Size')
    plt.xlabel('Problem Size')
    plt.ylabel('Time (s)')
    plt.legend()
    plt.tight_layout()
    plt.savefig('time')
    plt.show()
