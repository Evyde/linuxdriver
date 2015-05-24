#obj-m := mydriver.o
sname = mydriver.o

ifneq ($(KERNELRELEASE),)
	obj-m := $(sname)

else 

	KERNELDTR ?= /lib/modules/$(shell uname -r)/build/k
	PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDTR) M=$(PWD) modules

endif
