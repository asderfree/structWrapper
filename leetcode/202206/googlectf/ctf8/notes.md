# Solve

1. 解压得到的是一个图片，看来是使用图片隐写隐藏了flag
先使用hinwalk 分析一下图片中是否有藏文件
```shell
$ binwalk hideandseek.png 

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 1000 x 1000, 8-bit/color RGB, non-interlaced
$ exiftool hideandseek.png
ExifTool Version Number         : 11.88
File Name                       : hideandseek.png
Directory                       : .
File Size                       : 14 kB
File Modification Date/Time     : 2022:06:19 13:59:13+08:00
File Access Date/Time           : 2022:06:19 20:33:38+08:00
File Inode Change Date/Time     : 2022:06:19 13:59:25+08:00
File Permissions                : rwxrwxrwx
File Type                       : PNG
File Type Extension             : png
MIME Type                       : image/png
Image Width                     : 1000
Image Height                    : 1000
Bit Depth                       : 8
Color Type                      : RGB
Compression                     : Deflate/Inflate
Filter                          : Adaptive
Interlace                       : Noninterlaced
Image Size                      : 1000x1000
Megapixels                      : 1.0
```
不幸的是， 该文件中并没有隐藏文件，
使用exiftool 查看一下该文件的元数据。 发现确实是图片数据，没什么特别的，只能从png的文件内容入手了，先要了解一下png的格式:

|PNG文件标志|PNG数据块|……|PNG数据块|
|----|----|----|----| 

### PNG数据块（Chunk）

PNG定义了两种类型的数据块，一种是称为关键数据块(critical chunk)，这是标准的数据块，另一种叫做辅助数据块(ancillary chunks)，这是可选的数据块。关键数据块定义了4个标准数据块，每个PNG文件都必须包含它们，PNG读写软件也都必须要支持这些数据块。虽然PNG文件规范没有要求PNG编译码器对可选数据块进行编码和译码，但规范提倡支持可选数据块。

下表就是PNG中数据块的类别，其中，关键数据块部分我们使用深色背景加以区分。

|数据块符号|数据块名称|多数据块|可选否|位置限制|
|----|----|----|----|----|
|iHDR|文件头数据块|否|否|第一块|
|cHRM|基色和白色点数据块|否|是|在PLTE和IDAT之前|
|gAMA|图像γ数据块|否|是|在PLTE和IDAT之前|
|sBIT|样本有效位数据块|否|是|在PLTE和IDAT之前|
|PLTE|调色板数据块|否|是|在IDAT之前|
|bKGD|背景颜色数据块|否|是|在PLTE之后IDAT之前|
|hIST|图像直方图数据块|否|是|在PLTE之后IDAT之前|
|tRNS|图像透明数据块|否|是|在PLTE之后IDAT之前|
|oFFs|(专用公共数据块)|否|是|在IDAT之前|
|pHYs|物理像素尺寸数据块|否|是|在IDAT之前|
|sCAL|(专用公共数据块)|否|是|在IDAT之前|
|IDAT|图像数据块|是|否|与其他IDAT连续|
|tIME|图像最后修改时间数据块|否|是|无限制|
|tEXt|文本信息数据块|是|是|无限制|
|zTXt|压缩文本数据块|是|是|无限制|
|fRAc|(专用公共数据块)|是|是|无限制|
|gIFg|(专用公共数据块)|是|是|无限制|
|gIFt|(专用公共数据块)|是|是|无限制|
|gIFx|(专用公共数据块)|是|是|无限制|
|IEND|图像结束数据|否|否|最后一个数据块| 

每一个数据块的结构如下:
|名称|字节数|说明|
|---|----|---|
|Length| 4字节| 指定数据块中数据快数据区域的长度，其长度不得超过（2^31-1)字节|
|Chunk Type Code(数据块类型码)| 4字节| 数据块类型码由ascii字母组成|
|Chunk Data|可变长度,由length中的数据确定|存储按照Type code中指定的数据|
|CRC|4字节|循环冗余码|

而查看图片的块数据，可以发现一个特别的块:eDIH, 并不属于png的数据块，使用python脚本把所有的eDIH快数据提取出来

```python
#! python
import re
with open("hideandseek.png", "rb") as f:
    image_data= f.read()


occurrences = (location.end() for location in re.finditer(b"eDIH", image_data))

print("".join(chr(image_data[index]) for index in occurrences))
```
得到的是一个字符串:
Q1RGe0RpZFlvdUtub3dQTkdpc1Byb25vdW5jZWRQSU5HP30=

使用base64 -d 解码, 得到结果:
```shell
$ echo "Q1RGe0RpZFlvdUtub3dQTkdpc1Byb25vdW5jZWRQSU5HP30=" | base64 -d
CTF{DidYouKnowPNGisPronouncedPING?}
```
