#!/usr/bin/env python3

import sys

if __name__ == '__main__':
    names = {}
    for name in (name.strip() for name in sys.stdin):
        if name in names:
            names[name] += 1
        else:
            names[name] = 1

    for name, count in names.items():
        sys.stdout.write("%s\t%d\n" % (name, count))
