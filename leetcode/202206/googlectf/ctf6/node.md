## Resolve it

as it say, a weird base, much higher than base64, i'd think it is base 122, and  try to decode it:

however, it doesn't work, 
统计文件中前20个出现的字符的频率， 可以看到该文件如下输出:
```shell
[255, 141, 255, 14, 0, 1, 164, 100, 148, 100, 0, 16, 16, 0, 0, 16, 0, 16, 0, 0]
['0xff', '0x8d', '0xff', '0xe', '0x0', '0x1', '0xa4', '0x64', '0x94', '0x64', '0x0', '0x10', '0x10', '0x0', '0x0', '0x10', '0x0', '0x10', '0x0', '0x0']
```
前八个出现的字符为: 0xFF D8 E0 00 10 4A 46 49 46
wiki 搜索一下: https://en.wikipedia.org/wiki/List_of_file_signatures 可以看到JPEG格式的文件的头部即为该类型，所以读取文件 统计字符个数并且写入到jpeg文件格式中即可到下一步:
```python
chars = []

with open("chall.txt", "r", encoding='utf8') as file:
    for line in file:
        for char in line:
            chars.append(char)

sorted_set_chars = sorted(list(set(chars)))
indexes = [sorted_set_chars.index(c) for c in chars]

print(indexes[:20])
print([hex(n) for n in indexes[:20]])
image_data = bytes(((n & 0x0F) << 4 | (n & 0xF0) >> 4) for n in indexes)

with open("test.jpg", "wb") as file:
    file.write(image_data)
```
最后得到如下图片:
!["test.jpg"](./test.jpg "test.jpg")

encodings 中有提示到"a language that is the opposite of good", 可以查一下
