#include <stdio.h>

// Function prototypes
void func1();
void func2();

// Function pointer
void (*funcPtr)();

int main() {
    printf("Calling func1() directly\n");
    func1();  // Direct function call

    funcPtr = func2;  // Assigning function pointer
    printf("Calling func2() indirectly via function pointer\n");
    (*funcPtr)();  // Indirect function call

    return 0;
}

void func1() {
    printf("Inside func1()\n");
}

void func2() {
    printf("Inside func2()\n");
}
