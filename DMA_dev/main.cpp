
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <iostream>
#include <algorithm>
#include <fstream>
#include <stdio.h>

#include <typeinfo>

using namespace std;

void delay(void)
{
    int i,j;
    for(i=0;i<20000;i++)
        for(j=0;j<10000;j++);
}

void to_cim(unsigned int[]);
int str2ascii(string input);

int main(int argc , char ** argv){
	
	
	unsigned int write_array[133];

	write_array[0]=str2ascii("wlsz");
	write_array[1]=32;
	write_array[2]=str2ascii("blsz");
	write_array[3]=64;

	write_array[4]=str2ascii("wegt");
	
	
    	for(int i=5;i<133;i++)
		write_array[i]=0x9999;
	
	to_cim(write_array);
	//to_cim(write_array);
	
	write_array[0]=str2ascii("sfsz");
	write_array[1]=32;
	write_array[2]=str2ascii("inpt");
	//write_array[3]=0;
	int dummy=0x1;
	for(int i=3;i<133;i++){
		write_array[i]=0xffffffff;
		dummy=dummy<<1;
		if (dummy==0)
			dummy=0x1;
	}	
	to_cim(write_array);

    	return 0;
}

void to_cim(unsigned int write_array[]){
	unsigned int read_array[133];
	int fd;
    	fd = open("/dev/dma_dev",O_RDWR);
    	if(fd<0){ 
		printf("can not open file\n");
		while(1);
	}
    	else
		printf("open file sucuss\n");
	write(fd, write_array, 4*133);	
	//delay;
	if(read(fd, read_array, 4*133)==0){
		for(int i=0;i<133;i++)
            		printf("%x\n",read_array[i]);
		printf("=====================================\n");

	}
	close(fd);	
}


int str2ascii(string input){
	int output=0;
	for (int i=0; i<4; i++)
		output=(output<<8)+(int)input[i];
	return output;
}
