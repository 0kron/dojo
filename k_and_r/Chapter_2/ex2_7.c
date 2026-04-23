#include<stdio.h>
unsigned setbits(unsigned x, int p, int n, unsigned y); 
unsigned invert(unsigned x, int p, int n); 

/* Ex. 2.7 - invert returns x with the n bits at position p inverted. */

int main(){
  int p, n; 
  unsigned x; 
  printf("Ingrese x, p, n separados por un espacio:\n"); 
  scanf("%i %i %i", &x, &p, &n); 
  printf("Resultado: %o\n", invert(x, p, n));  
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

unsigned invert(unsigned x, int p, int n){
  unsigned inv = (~x) >> (p+1-n);
  return setbits(x, p, n, inv); 
}

