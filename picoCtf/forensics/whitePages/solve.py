# coding=gbk
#! python
contents = "                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "

zero = ' '
binStr = ""
for char in contents:
    if char == zero:
        binStr += '0'
    else:
        binStr += '1'

print(binStr)