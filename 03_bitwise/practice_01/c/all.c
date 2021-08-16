

#include <stdio.h>

int num = 0;
int num1 = 0 ;
int num2 = 0 ;

int result = 0;

int main(void)
{
	
	num1 = 0xF0F0F0F0;
	num2 = 0X0F0F0F0F;

	result = num1 & num2;
	printf("\n %u & %u = %u", num1, num2, result);
	printf("\n %x & %x = %x", num1, num2, result);

	result = num1 | num2;
	printf("\n %u & %u = %u", num1, num2, result);
	printf("\n %x & %x = %x", num1, num2, result);

	num1 = 0xFF00FF00;
	num2 = 0xF0F0F0F0;

	result = num1 ^ num2;
	printf("\n %u ^ %u = %u", num1, num2, result);
	printf("\n %x ^ %x = %x", num1, num2, result);

	num = 0xF0F0F0F0;
	result = ~num;
	printf("\n num = %x, ~num = %x", num ,result);

	result = 10 << 2;
	printf("\n 10 << 2 = %d", result);

	result = 10 >> 2;
	printf("\n 10 >> 2 = %d", result);

	printf("\n");

	return 0;
}

