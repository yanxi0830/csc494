"""
Generator for Prize problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Prize problem of N x M grid'
)
parser.add_argument('--n', type=int, help='N x M grid')
parser.add_argument('--m', type=int, help='N x M grid')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(n, m, name):





def generate_instance(n, m):
    name='prize-n{}-m{}'.format(n, m)

    problem_str = format_problem(n, m, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.n is not None and args.m is not None:
        generate_instance(args.n, args.m)
    else:
        # Generate 10 square grid (i.e. n == m)
        for n in range(2, 13):
            generate_instance(n, n)

        # Generate 10 rectangle grid
        for i in range(0, 10):
            n = random.randint(5, 20)
            m = random.randint(5, 20)