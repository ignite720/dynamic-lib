#include <stdio.h>

void foo_print();
extern void bar_print();

void foo_print() {
    printf("%s\n", __PRETTY_FUNCTION__);
}

int main2() {
    printf("%s\n", __PRETTY_FUNCTION__);
    
    foo_print();
    bar_print();
    return 0;
}