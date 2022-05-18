#!python -u
'''
Author: hawkingdong 
Date: 2022-05-18 20:03:15
LastEditors: hawkingdong hawkingdong@futunn.com
LastEditTime: 2022-05-18 20:43:33
FilePath: "/test_env/picoCtf/Cryptography/easypeasy/otp.py"
Description: picoCtf easy peasy
'''
import os.path

KEY_FILE = "./key"
KEY_LEN = 50000
FLAG_FILE = "./flag"


def startup(key_location):
	flag = open(FLAG_FILE).read()
	kf = open(KEY_FILE, "rb").read()

	start = key_location
	stop = key_location + len(flag)
	# print(start, stop)
	key = kf[start:stop]
	key_location = stop

	result = list(map(lambda p, k: "{:02x}".format(ord(p) ^ k), flag, key))
	print("This is the encrypted flag!\n{}\n".format("".join(result)))

	return key_location

def encrypt(key_location):
	ui = input("What data would you like to encrypt? ").rstrip()
	if len(ui) == 0 or len(ui) > KEY_LEN:
		return -1

	start = key_location
	stop = key_location + len(ui)

	kf = open(KEY_FILE, "rb").read()
	print(f"len key is: {len(kf)}")
	print(stop)
	# if stop >= len(kf):
	if stop >= KEY_LEN:
		stop = stop % KEY_LEN
		print(stop)
		key = kf[start:] + kf[:stop]
	else:
		key = kf[start:stop]
	key_location = stop
	print(ui)
	print(key)
	# 按位异或p 与 key
	result = list(map(lambda p, k: "{:02x}".format(ord(p) ^ k), ui, key))

	print("Here ya go!\n{}\n".format("".join(result)))

	return key_location

def constructNULLSTR(len):
	res = ""
	for i in range(0,len):
		res = res+"0"
	return res
r = (constructNULLSTR(32))

print("******************Welcome to our OTP implementation!******************")
# 使用key的前面长度去加密picoCTF
c = startup(0)
while c >= 0:
	# 每一次循环用加完后的长度加密输入
	c = encrypt(c)

