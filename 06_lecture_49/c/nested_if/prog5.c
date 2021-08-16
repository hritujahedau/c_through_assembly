

#include <stdio.h>

int num;

int main()
{
	num = 400;

	if(num == 100)
	{
		printf("num is 100");
	}
	else
	{
		if(num == 200)
		{
			printf("\n num is 200");
		}
		else
		{
			if(num == 300)
			{
				printf("\n num is 300");
			}
			else
			{
				printf("\n other than 100, 200 and 300");
			}
		}
	}
	

	return 0;
}

