#! python
result = []
def bin2hex(bin_str, i):
    res = int(bin_str, i)
    result.append(chr(res))

def list2str(l):
    return "".join(chr(int(r)) for r in l)

# sr = "01101100 01101001 01101101 01100101"
# binlist = sr.split(" ")
# for l in binlist:
#     bin2hex(l, 2)

# print("".join(res for res in result))

intsr = "164 141 142 154 145"
for l in intsr:
    bin2hex(l, 8)

print("".join(res for res in result))