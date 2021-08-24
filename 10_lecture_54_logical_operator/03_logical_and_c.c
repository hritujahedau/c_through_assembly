

#include <stdio.h>

int num1 = 0;
int num2 = 0;

int main()
{
	num1 = 25;
	num2 = 35;

	if(num1 % 2 == 0 && num2 % 2 == 0)
	{
		printf("\n Both Even");
	}
	else if(num1 % 2 == 0 && num2 % 2 != 0)
	{
		printf(" %d is even and %d is odd", num1, num2);
	}
	else if(num1 %2 != 0 && num2 % 2 == 0)
	{
		printf("\n %d is odd and %d is even", num1, num2);
	}
	else
	{
		printf("\n both odd");
	}

	printf("\n");

	return 0;
}

