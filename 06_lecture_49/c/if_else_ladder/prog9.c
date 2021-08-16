
#include <stdio.h>

int platform;

int main()
{
	platform = 5;
	if(platform == 1)
	{
		printf("\n Windows");
	}else if(platform == 2)
	{
		printf("\n XWindows");
	}else if(platform == 3)
	{
		printf("\n Android");
	}else if(platform == 4)
	{
		printf("\n WebGL");
	}else if(platform == 5)
	{
		printf("\n Mac OS");
	}else if(platform == 6)
	{
		printf("\n IOS");
	}else 
	{
		printf("\n Unknown Platform");
	}

	return 0;
}

