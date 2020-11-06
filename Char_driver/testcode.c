#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>

void delay(void)
{
    int i,j;
    for(i=0;i<20000;i++)
        for(j=0;j<10000;j++);
}
unsigned int readarray[10001];
int main(int argc , char ** argv)
{
    int fd;
    int i=0;
    fd = open("/dev/dma_kernel",O_RDWR);
/*
    if(fd<0) {printf("can not open file\n");while(1);}
    else printf("open file sucuss\n");
    delay();
    for(i=0;i<4000;i++)
    {
        readarray[i]=i+1;
    }
    while(1)
    {
        write(fd,readarray,4000*4);
	if(read(fd,readarray,4000*4)==0)
	{
		for(i=0;i<4000;i++)
		{
            printf(" %d",readarray[i]);
            readarray[i]=readarray[i]*2;
		}
		printf("\n=====================================\n");
        printf("======================================\n");
	}
    delay();delay();
    }*/
	close(fd);

    return 0;
}
