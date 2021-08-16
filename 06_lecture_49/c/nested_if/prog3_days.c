

#include <stdio.h>

int day;

int main()
{
	day = 8;
	if(day == 1)
	{
		printf("\n monday");
	}
	else
	{
		if(day == 2)
		{
			printf("\n tuesday");
		}
		else
		{
			if(day == 3)
			{
				printf("\n wednesday");
			}
			else
			{
				if(day == 4)
				{
					printf("\n thursday");
				}
				else
				{				
					if(day == 5)
					{
						printf("\n friday");
					}
					else
					{
						if(day == 6)
						{
							printf("\n saturday");
						
						}
						else
						{
							if(day == 7)
							{
								printf("\n sunday");
							}
							else 
							{
								printf("\n no day");
							}
						}
					}
				}
			}
		}
	}

	return 0;
}

