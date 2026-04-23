#include<stdio.h>

int bitcount(unsigned x); 

int main(){
  unsigned n; 
  printf("Ingrese un natural: "); 
  scanf("%i", &n); 
  printf("%d\n", bitcount(n)); 
  return 0; 
}

int bitcount(unsigned x){
  int b; 
  for (b = 0; x != 0; b++)
    x &= (x-1);  
  return b; 
}
