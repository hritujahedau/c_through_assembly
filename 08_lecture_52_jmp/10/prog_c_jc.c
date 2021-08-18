

#include <stdio.h>

int num1, num2, ans;

int main()
{

	num1 = 80;
	num2 = 50;
	
	ans = num1 - num2;

	if(ans < 0)
	{
		printf("\n %d is less than %d", num1, num2);
	}
	else
	{
		printf("\n %d is less than %d", num2, num1);
	}

	return 0;
}

