#include <stdio.h>

// Function with 2 parameters
void func_two_params(int a, int b) {
    printf("Function with two parameters: %d, %d\n", a, b);
}

// Function with 3 parameters
void func_three_params(int a, int b, int c) {
    printf("Function with three parameters: %d, %d, %d\n", a, b, c);
}

// Function pointer type with 2 parameters
typedef void (*func_ptr_two)(int, int);

// Function pointer type with 3 parameters
typedef void (*func_ptr_three)(int, int, int);

// Helper function to call a function pointer with 2 parameters
void call_func_ptr_two(func_ptr_two ptr, int a, int b) {
    func_ptr_two local_ptr = ptr;
    (*local_ptr)(a, b);
}

// Helper function to call a function pointer with 3 parameters
void call_func_ptr_three(func_ptr_three ptr, int a, int b, int c) {
    func_ptr_three local_ptr = ptr;
    (*local_ptr)(a, b, c);
}

int main() {
    // Initialize function pointers
    func_ptr_two ptr_two = func_two_params;
    func_ptr_three ptr_three = func_three_params;

    // Valid indirect call (should succeed and use jalr)
    printf("Calling function with correct number of parameters:\n");
    call_func_ptr_two(ptr_two, 1, 2);

    // Invalid indirect call (should trigger CFI violation)
    printf("Calling function with incorrect number of parameters:\n");
    call_func_ptr_two(ptr_three, 1, 2);

    // Another valid indirect call (should succeed and use jalr)
    printf("Calling another function with correct number of parameters:\n");
    call_func_ptr_three(ptr_three, 1, 2, 3);

    return 0;
}
