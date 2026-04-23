#include<stdio.h>

/* Ex. 1.6 - Print the value of a condition. */

int main(){
  int c, prev; 
  c = prev = 0; 
  while (prev != EOF){
    printf("%d ", ((c = getchar()) != EOF)); 
    prev = c; 
  }
}
