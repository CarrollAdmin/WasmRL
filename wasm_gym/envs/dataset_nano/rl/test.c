#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>

#define NI 500
#define NJ 500
#define beta 100

void mat_mul(int A[NI][NJ], int C[NI][NJ]) {
  int i, j, k;
  for (i = 0; i < NI; i++) {
    for (j = 0; j < NI; j++) {
       for (k = 0; k < NI; k++) {
          C[j][k] += A[i][j] * A[k][i];
       }
    }
  }
}

int main() {
    int (*C)[NJ] = malloc(NI * sizeof(*C));
    for (int i = 0; i < NI; i++) {
        for (int j = 0; j < NJ; j++) {
            C[i][j] = i+1;
        }
    }
    int (*A)[NJ] = malloc(NI * sizeof(*A));
    for (int i = 0; i < NI; i++) {
        for (int j = 0; j < NJ; j++) {
            A[i][j] = i+1;
        }
    }
    mat_mul(A, C);

    // printf("Partial result:\n");
    // for (int i = 0; i < 10; i++) {
    //     for (int j = 0; j < 10; j++) {
    //         printf("%d ", C[i][j]);
    //     }
    //     printf("\n");
    // }

    return 0;
}
