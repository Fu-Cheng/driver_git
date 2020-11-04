

KDIR	 	= ~/Desktop/PetaLinux2020/project_driver/build/tmp/work/zynq_generic-xilinx-linux-gnueabi/linux-xlnx/5.4+git999-r0/linux-xlnx-5.4+git999/
PWD 		:= $(shell pwd)
CROSS_COMPILE	?=arm-none-eabi-
ARCH 		?=arm

obj-m		:=dma_driver.o
all:
	make -C $(KDIR) CROSS_COMPILE=$(CROSS_COMPILE) ARCH=$(ARCH) M=$(PWD) modules
clean:
	make -C $(KDIR) ARCH=$(ARCH) M=$(PWD) clean

