#include <stdint.h>

#define XXX __asm__("nop")

int func(int p1) 
{
	return p1 * 4;
}

int main()
{
	int i = 0;
	int a = 3;
	for (i = func(a); i < 22; i++) 
	{
		XXX;
	}
	return 0;
}
