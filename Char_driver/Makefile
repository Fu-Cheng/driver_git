

#KDIR = ~/Desktop/PetaLinux2020/test_driver/build/tmp/work/zynq_generic-xilinx-linux-gnueabi/linux-xlnx/5.4+git999-r0/linux-xlnx-5.4+git999/
#PWD := $(shell pwd)
#CC   = $(CROSS_COMPILE)arm-linux-gnueabihf-gcc
#LD = $(CORSS_COMPILE)arm-linux-gnueabihf-ld
#ARCH =arm
#MAKE =make
#obj-m:=hello.o

#all:
#	$(MAKE) -C $(KDIR) ARCH=$(ARCH) M=$(PWD) modules
#clean:
#	make -C $(KDIR) ARCH=$(ARCH) M=$(PWD) clean



KDIR =/usr/src/linux-headers-$(shell uname -r)/
PWD := $(shell pwd)

obj-m :=hello.o

all:
	make -C $(KDIR) M=$(PWD) modules
clean:
	make -C $(KDIR) M=$(PWD) clean
