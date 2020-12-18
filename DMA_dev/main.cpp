
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

void to_cim(unsigned int&)
int str2ascii(string input);

int main(int argc , char ** argv){
	
	
	unsigned int write_array[69];
	write_array[0]=str2ascii("wlsz");
	write_array[1]=32;
	write_array[2]=str2ascii("blsz");
	write_array[3]=32;

	write_array[4]=str2ascii("wegt");
    	for(int i=5;i<69;i++)
		write_array[i]=i;
	
	to_cim(write_array);

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

void to_cim(unsigned int& write_array){
	unsigned int read_array[64];
	int fd;
    	fd = open("/dev/dma_dev",O_RDWR);
    	if(fd<0){ 
		printf("can not open file\n");
		while(1);
	}
    	else
		printf("open file sucuss\n");
	
	write(fd, write_array, 4*69);	
	delay;
	if(read(fd, read_array, 4*64)==0){
		for(int i=0;i<64;i++)
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
