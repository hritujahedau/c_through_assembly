

#include <stdio.h>


unsigned int num1, num2;

int main()
{
	num1 = 15;
	num2 = 10;
	if(num1 > num2)
	{
		printf("\n %d is greater than %d", num1, num2);
	}
	else
	{
		printf("\n %d is greater than %d ", num2, num1);
	}

	return 0;
}

