#include <linux/module.h>
#include <linux/kernel.h>
#define USER "Ilies CHERGUI"

int init_module () {
    printk("Hello world from %s.\n", USER);
    return 0;
}

void cleanup_module() {
    printk("Goodbye.\n");
}

MODULE_DESCRIPTION("Hello world kernel module");
MODULE_AUTHOR("Ilies CHERGUI <ilies.chergui@gmail.com>");
MODULE_LICENSE("GPL");
