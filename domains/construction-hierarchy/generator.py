"""
Generator for Construction problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Construction of size W x T x C'
)
parser.add_argument('--w', type=int, help='number of workers')
parser.add_argument('--t', type=int, help='number of trucks')
parser.add_argument('--c', type=int, help='number of composites')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(w, t, c, name):
    assert w > 0
    assert t > 0
    assert c > 0

    # PROBLEM DEFINITION
    acc = list(['(define (problem {})'.format(name), '\t(:domain construction-hierarchy)'])

    # OBJECTS
    acc.append('\t(:objects')

    workers = ['worker-{}'.format(i) for i in range(1, w+1)]
    trucks = ['truck-{}'.format(i) for i in range(1, t+1)]
    wood_parts = ['wood-part-{}'.format(i) for i in range(1, c+1)]
    glass_parts = ['glass-part-{}'.format(i) for i in range(1, c+1)]
    clay_parts = ['clay-part-{}'.format(i) for i in range(1, c+1)]
    composites = ['composite-{}'.format(i) for i in range(1, c+1)]
    capacity = ['capacity-{}'.format(i) for i in range(0, 2)]
    location = ['wood-warehouse', 'glass-warehouse', 'clay-warehouse', 'construction-area']

    acc.append('\t\t' + ' '.join(workers + ['-', 'worker']))
    acc.append('\t\t' + ' '.join(trucks + ['-', 'truck']))

    acc.append('\t\t' + ' '.join(wood_parts + ['-', 'wood-part']))
    acc.append('\t\t' + ' '.join(glass_parts + ['-', 'glass-part']))
    acc.append('\t\t' + ' '.join(clay_parts + ['-', 'clay-part']))
    acc.append('\t\t' + ' '.join(composites + ['-', 'composite']))

    acc.append('\t\t' + ' '.join(capacity + ['-', 'capacity-number']))
    acc.append('\t\t' + ' '.join(location + ['-', 'location']))

    acc.append('\t)')

    # INITIAL STATES
    acc.append('\t(:init')

    # workers, trucks at construction-area, parts at warehouse
    for o in workers + trucks:
        acc.append('\t\t(at {} construction-area)'.format(o))

    for o in wood_parts:
        acc.append('\t\t(at {} wood-warehouse)'.format(o))
    for o in glass_parts:
        acc.append('\t\t(at {} glass-warehouse)'.format(o))
    for o in clay_parts:
        acc.append('\t\t(at {} clay-warehouse)'.format(o))

    for o in composites:
        acc.append('\t\t(at {} construction-area)'.format(o))

    for o in trucks:
        acc.append('\t\t(no-driver {})'.format(o))

    for o in composites:
        acc.append('\t\t(no-assembled {})'.format(o))
        acc.append('\t\t(no-wood {})'.format(o))
        acc.append('\t\t(no-glass {})'.format(o))
        acc.append('\t\t(no-clay {})'.format(o))

    acc.append('\t\t(capacity-predecessor {} {})'.format(capacity[0], capacity[1]))
    for o in trucks:
        acc.append('\t\t(capacity {} {})'.format(o, capacity[1]))

    acc.append('\t)')

    # GOAL STATE
    acc.append('\t(:goal (and')
    for o in composites:
        acc.append('\t\t(assembled {})'.format(o))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(w, t, c):
    name = 'construction-hierarchy-t{}-c{}-w{}'.format(t, c, w)

    problem_str = format_problem(w, t, c, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.w is not None and args.t is not None and args.c is not None:
        generate_instance(args.w, args.t, args.c)
    else:
        # Generate instances with 1-3 trucks, 1-10 workers, 1-20 composites
        for t in range(1, 4):
            for w in range(1, 11):
                for c in range(1, 21):
                    generate_instance(w, t, c)