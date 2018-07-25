"""
Run ~/git/loom/generalize and ~/git/loom/solve on problem instances with different number of plates.
Plot the relationship between number of plates, and time to run ./generalize and ./solve
"""

import matplotlib.pyplot as plt
import generator
import subprocess
import time
import os

num_plates = []
generalize_times = []
solve_times = []

DEVNULL = open(os.devnull, 'wb', 0)
LOOM = '/home/xixiyan/git/loom'

cwd = os.getcwd()
os.chdir(LOOM)

if __name__ == '__main__':

    for p in range(1, 100):
        problem_name = generator.generate_instance(p=p, r=1, save=True)
        num_plates.append(p)

        start = time.time()
        subprocess.check_call(['./generalize', '{}/domain.pddl'.format(cwd), '{}/problems/{}.pddl'.format(cwd, problem_name)],
                              stdout=DEVNULL, stderr=subprocess.STDOUT)
        generalize_t = time.time() - start
        generalize_times.append(generalize_t)

        start = time.time()
        subprocess.check_call(['./solve'], stdout=DEVNULL, stderr=subprocess.STDOUT)
        solve_t = time.time() - start
        solve_times.append(solve_t)

    plt.plot(num_plates, generalize_times, label='generalize')
    plt.title('generalize - Time v.s. Problem Size')
    plt.xlabel('Number of plates')
    plt.ylabel('Time (s)')
    plt.legend()
    os.chdir(cwd)
    plt.savefig('generalize')
    plt.show()

    plt.plot(num_plates, solve_times, label='solve')
    plt.title('solve - Time v.s. Problem Size')
    plt.xlabel('Number of plates')
    plt.ylabel('Time (s)')
    plt.legend()
    os.chdir(cwd)
    plt.savefig('solve')
    plt.show()

