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
unsigned int write_array[1000];
unsigned int read_array[1000];
//unsigned int write_element=10;
//unsigned int read_element=0;
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
        	write_array[i]=i+1;
    	}
	
	write(fd, write_array, 4*1000);
	if(read(fd, read_array, 4*1000)==0){
		//printf("read: %d", read_element);
		
		for(int i=0;i<1000;i++)
            		printf(" %d",read_array[i]);

		
		printf("\n=====================================\n");
        	printf("======================================\n");
	}
    	delay();
	close(fd);
    return 0;
}
