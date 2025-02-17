#include <stdio.h>
#include <stdlib.h>
// #include <sys/time.h>

// #define NI 200
// #define NJ 200
// #define beta 100

// void mat_mul(int A[NI][NI], int B[NI][NI]) {
//   int i, j, k;
//   for (i = 0; i < NI; i++) {
//     for (j = 0; j < NI; j++) {
//         for (k = 0; k < NI; k++) {
//             B[j][k] += A[i][j] * A[i][k];
//         }
//     }
//   }
// }

// int main() {
//     int (*C)[NJ] = malloc(NI * sizeof(*C));
//     for (int i = 0; i < NI; i++) {
//         for (int j = 0; j < NJ; j++) {
//             C[i][j] = i+1;
//         }
//     }
//     int (*A)[NJ] = malloc(NI * sizeof(*A));
//     for (int i = 0; i < NI; i++) {
//         for (int j = 0; j < NJ; j++) {
//             A[i][j] = i+1;
//         }
//     }
//     mat_mul(A, C);
//     return 0;
// }

// int Fib(int x){
//     switch (x){
//         case 0:
//             return 0;
//         case 1:
//             return 1;
//         default:
//             return Fib(x-1) + Fib(x-2);
//     }
// }

// int main(){
//     int a = Fib(35);
//     // printf("%d", a);
//     return 0;
// }

int Fib(){
    int x = 28676122;
    return x;
}
int main(){
    int a = Fib(10);
    // printf("%d", a);
    return 0;
}
