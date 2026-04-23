#include<stdio.h>

/* Ex. 1.7 - Print value of EOF. */

int main(){
  int c; 
  while ((c = getchar()) != EOF); 
  printf("%d\n", c); 
}
