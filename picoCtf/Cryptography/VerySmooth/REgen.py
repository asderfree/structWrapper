'''
 #Date: 2022-05-23 16:40:19
 #LastEditors: asderfree
 #LastEditTime: 2022-05-23 17:06:59
 #FilePath: \test_env\picoCtf\Cryptography\VerySmooth\REgen.py
 #Description: 
'''
#! /bin/python


from binascii import hexlify
from gmpy2 import *
import math
import os
import sys


if sys.version_info < (3, 9):
    math.gcd = gcd
    math.lcm = lcm

FLAG = open('flag.txt').read().strip()
print(hexlify(FLAG.encode()), 16)
FLAG = mpz(hexlify(FLAG.encode()), 16)
SEED = mpz(hexlify(os.urandom(32)).decode(), 16)
STATE = random_state(SEED)
print(mpz(b'22', 3))

print(FLAG)
print(SEED)