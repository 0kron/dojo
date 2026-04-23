#include<stdio.h>
#define TABSTOP 3

/* Ex. 1.20 - Write a prograb detab that replaces tabs with n-blanks. */

char detab(char c);

int main(){
  int c; 
  while((c = getchar()) != EOF)
    detab(c); 
  return 0; 
}

char detab(char c){
  int i; 
  if (c == '\t')
    for (i = 0; i < TABSTOP; i++) putchar(' '); 
  else
    putchar(c); 
}
