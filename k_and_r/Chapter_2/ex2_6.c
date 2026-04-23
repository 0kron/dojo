#include<stdio.h>
unsigned setbits(unsigned x, int p, int n, unsigned y); 

/* Ex. 2.6 - setbits returns x, with n bits at position p that are the 
 * 	     rightmost n bits from y */

int main(){
  int p, n; 
  unsigned x, y; 
  printf("Ingrese x, p, n, y, separados por un espacio:\n"); 
  scanf("%i %i %i %i", &x, &p, &n, &y); 
  printf("Resultado: %o\n", setbits(x, p, n, y));  
  return 0; 
}

unsigned setbits(unsigned x, int p, int n, unsigned y){
  y = (y & ~(~0 << n)) << (p+1-n); /* los n rightmost bits de y, empezando en p */
  /* printf("Y: %o\n", y); */
  unsigned x_left = (~0 << (p+1));
  unsigned x_right = ~(~0 << (p+1-n));
  unsigned x_mask = x_right | x_left;
  /* printf("X: %o\n", (x & x_mask)); */
  return (x & x_mask) | y; 
}
