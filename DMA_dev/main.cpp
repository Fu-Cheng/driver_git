
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
unsigned int params[6];
unsigned int weight[65];
unsigned int in_cim[65];
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
	

	params[0]=str2ascii("wlsz");
	params[1]=32;
	params[2]=str2ascii("blsz");
	params[3]=32;
	params[4]=str2ascii("sfsz");
	params[5]=32;

	weight[0]=str2ascii("wegt");
    	for(int i=1;i<65;i++)
		weight[i]=i;
	
	in_cim[0]=str2ascii("inpt");
	for(int i=1;i<65;i++)
		in_cim[i]=i;

	write(fd, params, 4*6);
	read(fd, read_array, 4*64);
	delay;
	write(fd, weight, 4*65);
	read(fd, read_array, 4*64);
	delay;
	write(fd, in_cim, 4*65);
	
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
