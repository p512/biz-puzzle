#!/usr/bin/env python3
import sys
import re

setChar = '█'
unsetChar = ' '

def main():
    sets = set([(int(x[0]),int(x[1])) for x in re.findall('set\((\d+),(\d+)\)', sys.stdin.read())])
    cols = max(x[1] for x in sets)
    rows = max(x[0] for x in sets)
    for r in range(1,rows+1):
        for c in range(1,cols+1):
            sys.stdout.write(setChar if (r,c) in sets else unsetChar)
        sys.stdout.write('\n')
    sys.stdout.flush()

if __name__ == "__main__":
    main()

