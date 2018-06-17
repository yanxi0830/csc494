"""
Generator for Recycling problems.
"""

import argparse
import os
import random


parser = argparse.ArgumentParser(
    description='generate a Recycling problem of size n')
parser.add_argument('--n', type=int, help='number of bins with objects of type paper and glass')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)


def format_problem(n, name):
    assert n > 0

    # problem definition
    rv = list(['(define (problem {})'.format(name), '\t(:domain recycling)'])

    # objects
    rv.append('\t(:objects')

    num_glass = random.randint(0, n)
    num_paper = n - num_glass
    glasses = ['glass-{}'.format(i) for i in range(1, num_glass + 1)]
    if num_glass > 0:
        glasses.append('-')
        glasses.append('glass')
    papers = ['paper-{}'.format(i) for i in range(1, num_paper + 1)]
    if num_paper > 0:
        papers.append('-')
        papers.append('paper')
    bins = ['bin-{}'.format(i) for i in range(1, n + 1)]
    bins.append('-')
    bins.append('bin')

    rv.append('\t\t' + ' '.join(glasses))
    rv.append('\t\t' + ' '.join(papers))
    rv.append('\t\t' + ' '.join(bins))
    rv.append('\t\tgc - glass-container')
    rv.append('\t\tpc - paper-container')

    rv.append('\t)')

    # init state
    rv.append('\t(:init')
    obj_list = glasses[:-2] + papers[:-2]
    for i in range(0, n):
        rv.append('\t\t(in {} {})'.format(obj_list[i], bins[i]))
        rv.append('\t\t(not (empty {}))'.format(bins[i]))

    rv.append('\t\t(at {})'.format(bins[random.randint(0, n - 1)]))

    rv.append('\t)')

    # goal state
    rv.append('\t(:goal (and')
    for g in glasses[:-2]:
        rv.append('\t\t(in {} gc)'.format(g))
    for p in papers[:-2]:
        rv.append('\t\t(in {} pc)'.format(p))
    for b in bins[:-2]:
        rv.append('\t\t(empty {})'.format(b))

    rv.append('\t\t)')
    rv.append('\t)')
    rv.append(')')

    return '\n'.join(rv)


def generate_instance(n):
    name = 'recycling-n{}'.format(n)

    problem_str = format_problem(n, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writing to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else :
        print(problem_str)


if __name__ == '__main__':
    args = parser.parse_args()
    if args.n is not None:
        generate_instance(args.n)
    else:
        # Generate instance for n = 1, 2, ..., 10
        for i in range(1, 11):
            generate_instance(i)
