KDIR := /lib/modules/$(shell uname -r)/build

obj-m += hello_world.o

all:
	$(MAKE) -C $(KDIR) M=$(pwd) modules

clean:
	rm -rf *.o *.ko *.mod *.mod.* *.cmd .module* modules* Module* .*.cmd .tmp*
