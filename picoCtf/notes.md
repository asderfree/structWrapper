## some useful linux command:
1. binwalk: a tool for searching binary images for embedded files and executable code;
            一个检索二进制图像中嵌入的（隐藏的）文件与可执行代码的工具
    -B --signature scan 目标文件获取常见文件签名
    -R --raw=<str> Scan target files for the specified sequence of bytes. 扫描指定字节序列的目标文件
    -A --opcodes Scan target file for common executeable opcode signature
    -e automatically extract known file types
2. exiftool: read and write meta information in file:
            一个读取和写入图片元数据的工具
    ![exiftool](../imgs/exiftool.png)
    