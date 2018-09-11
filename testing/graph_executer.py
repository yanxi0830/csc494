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

IMPORTANT_LINES = [3, 12, 30, 35, 40, 45, 57, 59]

# TODO: CHANGE THIS FOR DIFFERENT DOMAIN
def get_problem_size(problem_name):
    size = re.findall("\d+", problem_name)[2]
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

def parse_exec_file(filename):
    result = []
    with open(filename) as f:
        lines = f.readlines()
    for i in range(0, len(lines)):
        if i % 6 == 0:
            problem_name = lines[i].strip()
            problem_size = get_problem_size(problem_name)
            time_str = lines[i+3].strip()
            time_list = re.findall("[\d.]+", time_str)
            time_in_second = float(time_list[1])
            if float(time_list[0]) > 0:
                time_in_second += float(time_list[0]) * 60
            result.append((problem_size, time_in_second))

    result.sort(key = lambda x: x[0])
    return [x[1] for x in result]

if __name__ == '__main__':
    lamapath = '/home/xiyan/git/csc494/testing/cleaning/result-all'
    execpath = '/home/xiyan/git/csc494/testing/cleaning/result-executer/executer-times.txt'
    txtfiles = [f for f in os.listdir(lamapath) if isfile(join(lamapath, f))]
    txtfiles.sort(key = lambda x: get_problem_size(x))

    all_data = []
    for f in txtfiles:
        size = get_problem_size(f)
        parsed_data = parse_file(join(lamapath, f))
        all_data.append([size] + parsed_data)

    all_data = np.array(all_data)
    all_data = np.transpose(all_data)
    # all_data[0] = problem sizes
    print(all_data[0])

    # exec times sorted by problem size
    exec_times = parse_exec_file(execpath)
    print(exec_times)

    num_problems = [i for i in range(1, len(all_data[0]))]
    loom_policy_time = all_data[1][0] + all_data[3][0]
    loom_agg_times = []
    lama_agg_times = []
    lama_individual_times = np.add(all_data[5], all_data[7])
    print(lama_individual_times)
    for n in num_problems:
        # aggregate the first n problem times
        lama = sum(lama_individual_times[:n])
        loom = loom_policy_time + sum(exec_times[:n])
        loom_agg_times.append(loom)
        lama_agg_times.append(lama)

    plt.plot(num_problems, loom_agg_times, label='LOOM')
    plt.plot(num_problems, lama_agg_times, label='LAMA-FIRST')
    plt.title('Time v.s. Number of Problems')
    plt.xlabel('Number of Problems')
    plt.ylabel('Time (s)')
    plt.legend()
    plt.tight_layout()
    plt.savefig('time-num-probs')
    plt.show()
