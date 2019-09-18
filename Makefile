KDIR := /lib/modules/$(shell uname -r)/build

obj-m += hello_world.o

all:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -rf *.o *.ko *.mod.* *.cmd .module* modules* Module* .*.cmd .tmp*
