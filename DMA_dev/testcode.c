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
unsigned int writearray[1000];
unsigned int readarray[1000];
int main(int argc , char ** argv){
	int fd;
    	fd = open("/dev/dma_dev",O_RDWR);
    	if(fd<0){ 
		printf("can not open file\n");
		while(1);
	}
    	else
		printf("open file sucuss\n");
    	delay();
    	for(int i=0;i<1000;i++){
        	writearray[i]=i+1;
    	}
	write(fd, readarray, 1000*4);
	if(read(fd, readarray, 1000*4)==0){
		for(int i=0;i<1000;i++){
            		printf(" %d",readarray[i]);
            		readarray[i]=readarray[i]*2;
		}
		printf("\n=====================================\n");
        	printf("======================================\n");
	}
    	delay();
	close(fd);
    return 0;
}
