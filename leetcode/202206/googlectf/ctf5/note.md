# CTF5

首先需要注意到，RoboCaller1336.py中使用的随机数是getrandbits()方法，该随机数并不是一个真正的随机数，而是一个伪随机数，我们先使用压缩文件中已有的电话集来反推生成该电话表的随机数是什么:
```python
f = open("numbers.txt","r")
numbers = [(int(n) - (1 << 31)) for n in f.read().replace('-','').split('\n')]
f.close()
```
然后google一下如何预测伪随机数生成的随机数，发现python库mersenne-twister-predictor 可以实现，安装该库：
```shell
pip install mersenne-twister-predictor
```
使用下面会生成的随机数来解码密码:
```python

secrte = None
with open('secret.enc', 'rb') as f:
    secret = list(f.read())
print(secret)

flag = ""
for s in secret:
    key = predictor.getrandbits(8)
    flag = flag + chr(key ^ s)
print (flag)

```