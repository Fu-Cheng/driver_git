
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
unsigned int write_array[136];
unsigned int read_array[64];

int str2ascii(string input);

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
	write_array[3]=32;
	write_array[4]=str2ascii("sfsz");
	write_array[5]=32;

	write_array[6]=str2ascii("wegt");
    	for(int i=7;i<71;i++)
		write_array[i]=i-6;
	
	write_array[71]=str2ascii("inpt");
	for(int i=72;i<136;i++)
		in_cim[i]=i-71;

	delay;

	
	if(read(fd, read_array, 4*64)==0){
		//printf("read: %d", read_element);
		
		for(int i=0;i<64;i++)
            		printf("%x\n",read_array[i]);

		printf("\n=====================================\n");

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
		output=(output<<8)+(int)input[i];
	return output;
}
