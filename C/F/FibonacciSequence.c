#include "stdio.h"

/* Function Prototype Declarations */
long long recursiveFibonacciSequence(long long x, long long y, int z);
long long int iterativeFibonacciSequence(int n);

/* Function Declarations */
long long recursiveFibonacciSequence(long long x, long long y, int z) {
    return (--z > 0) ? (recursiveFibonacciSequence(y, x + y, z)) : (x);
}

long long int iterativeFibonacciSequence(int n) {
    int now = 0, next = 1, temp;
    while(--n > 0) {
        temp = now + next;
        now = next;
        next = temp;
    }
    return next;
}

int main(void) {
    long long recursiveResult = recursiveFibonacciSequence(1, 2, 128);
    long long int iterativeResult = iterativeFibonacciSequence(128);

    printf("Recursive fibonacci sequence result: %lld\n", recursiveResult);
    printf("Iterative fibonacci sequence result: %lld\n", iterativeResult);
    return 0;
}
