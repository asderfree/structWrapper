CC=gcc -std=c99
all: functions32 functions64 variables32 variables64 control_flow example

functions32:
	$(CC) function.c -m32 -o functions32

functions64:
	$(CC) function.c -m64 -o functions64


variables32:
	$(CC) test.c -m32 -o variables32


variables64:
	$(CC) test.c -o variables64


control_flow:
	$(CC) control_flow.c -o control_flow

example:
	$(CC) example.c -o example

clean:
	rm functions32 functions64 variables32 variables64 control_flow example


