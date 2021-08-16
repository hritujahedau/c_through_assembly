

#include <stdio.h>

int num;

int main()
{
	num = 12;
	if(num == 2)
	{
		printf("\n num is 2");
	}
	else
	{
		if(num == 4)
		{
			printf("\n num is 4");
		}
		else
		{
			if(num == 6)
			{
				printf("\n num is 6");
			}
			else
			{
				if(num == 8)
				{
					printf("\n num is 8");
				}
				else
				{
					if(num == 10)
					{
						printf("\n num is 10");
					}
					else
					{
						printf("\n num not present");
					}
				}
			}
		}
	}

	return 0;
}

