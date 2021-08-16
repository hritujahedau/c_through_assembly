

#include <stdio.h>

int color ;

int main()
{
	color = 8;
	
	if(color == 1)
	{
		printf("\n red");
	}
	else
	{
		if(color == 2)
		{
			printf("\n green");
		}
		else
		{
			if(color == 3)
			{
				printf("\n blue");
			}
			else
			{
				if(color == 4)
				{
					printf("\n magenta");
				}
				else
				{
					if(color == 5)
					{
						printf("\n cyan");
					}
					else
					{
						if(color == 6)
						{
							printf("\n yellow");
						}
						else
						{
							if(color == 7)
							{
								printf("\n white");
							}
							else
							{
								if(color == 8)
								{				
									printf("\n black");
								}
								else
								{
									printf("\n no color present");
								}
							}
						}
					}
				}
			}

		}
	}
	

	return 0;
}

