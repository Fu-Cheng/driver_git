
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
unsigned int write_array[69];
unsigned int read_array[5];

int main(int argc , char ** argv){
	
	int fd;
    	fd = open("/dev/dma_dev",O_RDWR);
    	if(fd<0){ 
		printf("can not open file\n");
		while(1);
	}
    	else
		printf("open file sucuss\n");
	

	write_array[0]=str2ascii("wlsz");
	write_array[1]=32;
	write_array[2]=str2ascii("blsz");
	write_array[3]=64;
	write_array[4]=str2ascii("wegt");
	
    	for(int i=5;i<69;i++){
        	write_array[i]=i;
    	}

	write(fd, write_array, 4*69);
	if(read(fd, read_array, 4*5)==0){
		//printf("read: %d", read_element);
		
		for(int i=0;i<5;i++)
            		printf(" %d",read_array[i]);

		
		printf("\n=====================================\n");
        	printf("======================================\n");
	}

	close(fd);

	/*
	string aaa;
	aaa="wegt";
	int b=0;
	for (int i=0; i<4; i++)
		b+=((int)aaa[i]<<(8*i));
	
	printf("%x\n",b);

	//cout<<typeid(char).name()<<endl;
	//cout<<typeid(int).name()<<endl;
	//cout<<typeid(string).name()<<endl;
	*/
    	return 0;
}


int str2ascii(string input){
	int output=0;
	for (int i=0; i<4; i++)
		output=(b<<8)+(int)input[i];
	return output;
}
