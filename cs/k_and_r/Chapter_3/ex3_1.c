#include<stdio.h>

int search(int x, int v[], int n); 

/* Ex. 3.1 - Adapt the binary search algorithm to only use if inside the loop. */

int main(){
  int v[] = {2, 3, 5, 7, 11, 13, 17, 19}; 
  int n = 8; 
  int x; 
  printf("Ingrese un natural a buscar: "); 
  scanf("%i", &x); 
  if ((n = search(x, v, n)) >= 0)
    printf("Se encontró %d en la posición %d.\n", x, n); 
  else
    printf("No se encontró %d.\n", x); 
  return 0; 
}

int search(int x, int v[], int n){
  int low, high, mid; 
  low = 0, high = n-1; 

  while (low < high) {
    mid = (low + high) / 2;
    if (x > v[mid])
      low = mid + 1; 
    else 
      high = mid;
  }

  if (v[mid] == x) 
    return mid; 
  else 
    return -1; 
}
