#include <stdio.h>

extern int factorial(int n);  // declare assembly function

int main() {
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    int result = factorial(n);
    printf("Factorial of %d = %d\n", n, result);

    return 0;
}
