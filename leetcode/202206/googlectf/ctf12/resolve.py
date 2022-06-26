#! python
import requests
import itertools

url = 'https://old-lock-web.2021.ctfcompetition.com/'
myobj = {'v': '35870'}



array = [3,5,8,7,0]
pailie = list(itertools.permutations(array))#要list一下，不然它只是一个对象
secret = 0
for x in pailie:
    secret = 0
    for y in x:
        secret = secret * 10 + y
        myobj["v"] = secret
    print(myobj)
    rsp = requests.post(url, data=myobj)
    if "Hmm" not in rsp.text:
        print(rsp.text)
        break
print(secret)


# x = requests.post(url, data = myobj)

# print(x.text) 