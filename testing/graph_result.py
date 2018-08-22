import matplotlib.pyplot as plt
import subprocess
import time
import os
from os.path import isfile, join
import re
import numpy as np

GENERALIZE_TIME = 3
POLICY_LENGTH = 12
SOLVE_TIME = 30
LOOM_MEMORY = 35
TRANSLATE_TIME = 40
PLAN_LENGTH = 45
LAMA_FIRST_TIME = 57
LAMA_MEMORY = 59

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
    size = re.findall("\d+", problem_name)[2]
    return int(size)

def parse_file(filename):
    result = []
    with open(filename) as f:
        lines = f.readlines()
    for i in IMPORTANT_LINES:
        line = lines[i].strip()
        metric = re.findall("[\d.]+", line)[0]
        result.append(metric)
    return result

if __name__ == '__main__':
    mypath = '/home/xiyan/git/csc494/testing/foo'
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

    plt.plot(all_data[0], all_data[1], label='generalize times')
    plt.title('generalize - Time v.s. Problem Size')
    plt.xlabel('Number of plates')
    plt.ylabel('Time (s)')
    plt.legend()
    plt.savefig('generalize')
    plt.show()
