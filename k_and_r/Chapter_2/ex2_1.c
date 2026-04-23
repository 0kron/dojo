#include <stdio.h>
#include <limits.h>

/* Ex. 2.1 - Output the upper and lower bounds of short, int and char */

int main(){
  printf("%6s\t%16s\t%16s\n", "Tipo",  "Máximo", "Mínimo"); 
  printf("%6s\t%15d\t%15d\n", "Short", SHRT_MAX, SHRT_MIN);  
  printf("%6s\t%15d\t%15d\n", "Int",   INT_MAX,  INT_MIN);  
  printf("%6s\t%15d\t%15d\n", "Char",  CHAR_MAX, CHAR_MIN);  
  return 0; 
}
  
  
