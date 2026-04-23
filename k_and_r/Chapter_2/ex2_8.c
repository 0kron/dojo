#include<stdio.h>
unsigned rightrot(unsigned x, int n); 

/* Ex. 2.8 - rightrot(x, n) the value of the x rotated n positions to the right. */

int main(){
  int n; 
  unsigned x;
  /* printf("%x\n", ~0); -- Observamos que unsigned es de 4 bytes (32 bits) */
  printf("Ingrese x y n separados por un espacio:\n"); 
  scanf("%i %i", &x, &n); 
  printf("Resultado: %x\n", rightrot(x, n));  
  return 0; 
}

unsigned rightrot(unsigned x, int n){
  return (x << (32 - n)) | (x >> n); 
}
