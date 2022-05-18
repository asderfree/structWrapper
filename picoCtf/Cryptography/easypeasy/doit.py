#! python
'''
Author: hawkingdong hawkingdong@futunn.com
Date: 2022-05-18 20:51:21
LastEditors: hawkingdong hawkingdong@futunn.com
LastEditTime: 2022-05-18 20:58:00
FilePath: \test_env\picoCtf\Cryptography\easypeasy\doit.py
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
'''
from pwn import *

KEY_LEN = 50000
MAX_CHUNK = 1000

r = remote("mercury.picoctf.net", 36981)
r.recvuntil("This is the encrypted flag!\n")
flag = r.recvlineS(keepends = False)
log.info(f"Flag: {flag}")
bin_flag = unhex(flag)

counter = KEY_LEN - len(bin_flag)

with log.progress('Causing wrap-around') as p:
    while counter > 0:
        p.status(f"{counter} bytes left")
        chunk_size = min(MAX_CHUNK, counter)
        r.sendlineafter("What data would you like to encrypt? ", "a" * chunk_size)
        
        counter -= chunk_size

r.sendlineafter("What data would you like to encrypt? ", bin_flag)
r.recvlineS()
log.success("The flag: {}".format(unhex(r.recvlineS())))
