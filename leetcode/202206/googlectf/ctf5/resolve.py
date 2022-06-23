#! python
import secrets
from mt19937predictor import MT19937Predictor

f = open("robo_numbers_list.txt", "r")
numbers = [(int(num) - (1 << 31)) for num in f.read().replace("-", "").split('\n')]
f.close()
print (numbers)

predictor = MT19937Predictor()
for n in numbers:
    predictor.setrandbits(n, 32)

secrte = None
with open('secret.enc', 'rb') as f:
    secret = list(f.read())
print(secret)

flag = ""
for s in secret:
    key = predictor.getrandbits(8)
    flag = flag + chr(key ^ s)
print (flag)
