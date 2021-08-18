

#include <stdio.h>

int num1, num2;

int main()
{
	num1 = 84;
	num2 = 76;

	if(num1 < num2)
	{
		printf("\n %d is less than %d", num1, num2);
	}
	else
	{
		printf("\n %d is less than %d", num2, num1);
	}

	return 0;
}

