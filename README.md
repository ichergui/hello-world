# Hello world
This is a simple code source of kernel module "Hello world".

## Get and build the software
### Download the source code
    $ cd $HOME
    $ mkdir devel
    $ cd devel
    $ git clone https://github.com/ichergui/hello_world.git

### Build
It will be possible to use the Makefile.

```bash
$ cd $HOME/devel/hello_world
$ make all
```

## Test
#### Insert it into the Linux kernel
```bash
$ sudo insmod hello_world.ko
```
* __verification__
```bash
$ lsmod | grep -i "hello"
hello_world            16384  0
```

Try with the command line dmesg to see what's happened.

```bash
$ dmesg | tail
```

#### Remove it from Linux kernel
```bash
$ sudo rmmod hello_world
```
