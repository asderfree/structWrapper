#! python
import re
with open("hideandseek.png", "rb") as f:
    image_data= f.read()


occurrences = (location.end() for location in re.finditer(b"eDIH", image_data))

print("".join(chr(image_data[index]) for index in occurrences))