# pip install brainfuck-interpreter
import subprocess
import binascii
import zlib
import gzip
# import brainfuck

#
# Extract image
#

chars = []

with open("chall.txt", "r", encoding='utf8') as file:
    for line in file:
        for char in line:
            chars.append(char)

sorted_set_chars = sorted(list(set(chars)))
indexes = [sorted_set_chars.index(c) for c in chars]

piet_image_data = bytes(((n & 0x0F) << 4 | (n & 0xF0) >> 4) for n in indexes)

#
# Read evil code
#

evil_code = ""

for c in (chr(n) for n in piet_image_data):
    if "a" <= c <= "z":
        evil_code += c
        continue
    if len(evil_code) >= 20:
        break
    evil_code = ""


#
# Run evil code
#

evil_output = ""
accumulator = 0

for s in evil_code:
    if s == "a":
        accumulator += 1
    elif s == "e":  # Apply weaver function
        accumulator = (
            (accumulator >> 0 & 1) << 2 |
            (accumulator >> 1 & 1) << 0 |
            (accumulator >> 2 & 1) << 4 |
            (accumulator >> 3 & 1) << 1 |
            (accumulator >> 4 & 1) << 6 |
            (accumulator >> 5 & 1) << 3 |
            (accumulator >> 6 & 1) << 7 |
            (accumulator >> 7 & 1) << 5
        )
    elif s == "u":
        accumulator -= 1
    elif s == "w":
        evil_output += chr(accumulator)
    elif s == "z":
        accumulator = 0

#
# Decompress evil output
#

zlib_data = binascii.unhexlify(evil_output)
gzip_data = zlib.decompress(zlib_data)
actual_piet_image = gzip.decompress(gzip_data)

#
# Read piet image
#

piet_output = subprocess.run(
    ["npiet", "-e", "10000", "piet.ppm"],
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE,
)

piet_output = piet_output.stdout.replace(b"\x01", b"").decode()

#
# Decompress piet output
#

zlib_data = binascii.unhexlify(piet_output)
nya_code = zlib.decompress(zlib_data)

nya_code = nya_code.decode()
nya_code = nya_code.split("\n")

#
# Execute nya~ code
#

nya_result = ""
counter = 0
for line in nya_code:

    for char in line:
        if char == "n":
            counter -= 1
        elif char == "y":
            counter += 1
        elif char == "a":
            nya_result += chr(counter)
        elif char == "~":
            counter = 0

#
# Convert to Unary
#

# Convert to binary and remove leading 0b
unary_code = bin(int(nya_result))[2:]

#
# Convert Unary to brainfuck
#
brainfuck_code = ""

# Remove leading 1
unary_code = unary_code[1:]

for i in range(0, len(unary_code), 3):
    operation = unary_code[i:i+3]

    if operation == "000":
        brainfuck_code += ">"
    elif operation == "001":
        brainfuck_code += "<"
    elif operation == "010":
        brainfuck_code += "+"
    elif operation == "011":
        brainfuck_code += "-"
    elif operation == "100":
        brainfuck_code += "."
    elif operation == "101":
        brainfuck_code += ","
    elif operation == "110":
        brainfuck_code += "["
    elif operation == "111":
        brainfuck_code += "]"

#
# Run brainfuck
#

flag = brainfuck.evaluate(brainfuck_code)


print(flag)