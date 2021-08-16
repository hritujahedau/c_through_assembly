

#include <stdio.h>


int week;

int main()
{
	week = 2;

	if(week == 1)
	{
		printf("first week\n");
	}
	else
	{
		if(week == 2)
		{
			printf("\n second week");
		}
		else
		{
			if(week == 3)
			{
				printf("\n third week");
			}
			else
			{
				if(week == 4)
				{
					printf("\n forth week");
				}
				else
				{
					printf("\n not week");
				}	
			}
		}
	}
	printf("\n");
	return 0;
}

