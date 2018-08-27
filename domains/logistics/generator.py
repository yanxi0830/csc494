"""
Generator for Logistic problems.
"""

import argparse
import os
import random

parser = argparse.ArgumentParser(
    description='generate a Logistic problem of size P'
)
parser.add_argument('--p', type=int, help='number of packages')
parser.add_argument(
    '--dest-dir',
    default=None,
    help='directory to store in (otherwise just print)'
)
args = parser.parse_args()


def format_problem(p, name):

    # problem definition
    acc = list(['(define (problem {})'.format(name), '\t(:domain logistics)'])

    # objects
    acc.append('\t(:objects')

    packages = ['package-{}'.format(i) for i in range(1, p + 1)]
    city = ['city-a', 'city-b', 'city-c']
    trucks = ['truck-a', 'truck-b', 'truck-c']
    planes = ['plane-1', 'plane-2', 'plane-3']
    houses = ['house-a', 'house-b', 'house-c']
    houses_rotate = ['house-b', 'house-c', 'house-a']
    airports = ['airport-a', 'airport-b', 'airport-c']
    warehouses = ['warehouse-a', 'warehouse-b', 'warehouse-c']

    acc.append('\t\t' + ' '.join(packages + ['-', 'package']))
    acc.append('\t\t' + ' '.join(city  + ['-', 'city']))
    acc.append('\t\t' + ' '.join(trucks + ['-', 'truck']))
    acc.append('\t\t' + ' '.join(planes  + ['-', 'airplane']))
    acc.append('\t\t' + ' '.join(houses  + ['-', 'location']))
    acc.append('\t\t' + ' '.join(airports  + ['-', 'location']))
    acc.append('\t\t' + ' '.join(warehouses  + ['-', 'location']))

    acc.append('\t)')

    # init state
    acc.append('\t(:init')

    # for o in packages:
    #     acc.append('\t\t(PACKAGE {})'.format(o))
    # for c in city:
    #     acc.append('\t\t(CITY {})'.format(c))
    # for t in trucks:
    #     acc.append('\t\t(TRUCK {})'.format(t))
    # for o in planes:
    #     acc.append('\t\t(AIRPLANE {})'.format(o))
    # for o in houses + airports + warehouses:
    #     acc.append('\t\t(LOCATION {})'.format(o))
    for o in airports:
        acc.append('\t\t(AIRPORT {})'.format(o))

    for i in range(0, 3):
        acc.append('\t\t(in-city {} {})'.format(houses[i], city[i]))
        acc.append('\t\t(in-city {} {})'.format(airports[i], city[i]))
        acc.append('\t\t(in-city {} {})'.format(warehouses[i], city[i]))
        acc.append('\t\t(at {} {})'.format(planes[i], airports[i]))
        acc.append('\t\t(at {} {})'.format(trucks[i], warehouses[i]))

    for i in range(len(packages)):
        acc.append('\t\t(at {} {})'.format(packages[i], warehouses[i % 3]))

    acc.append('\t)')

    # goal state
    acc.append('\t(:goal (and')
    for i in range(len(packages)):
        acc.append('\t\t(at {} {})'.format(packages[i], houses_rotate[i % 3]))

    acc.append('\t\t)')
    acc.append('\t)')
    acc.append(')')

    return '\n'.join(acc)


def generate_instance(p):
    name = 'logistics-p{}'.format(p)

    problem_str = format_problem(p, name)
    if args.dest_dir is not None:
        os.makedirs(args.dest_dir, exist_ok=True)
        dest_path = os.path.join(args.dest_dir, name + '.pddl')
        print('Writimg to {}'.format(dest_path))
        with open(dest_path, 'w') as fp:
            print(problem_str, file=fp)
    else:
        print(problem_str)


if __name__ == '__main__':
    if args.p is not None:
        generate_instance(args.p)
    else:
        for i in range(1, 201):
            generate_instance(i*5)
