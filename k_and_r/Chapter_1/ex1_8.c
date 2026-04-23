#include<stdio.h>

/* Ex. 1.8 - Counts blanks, tabs and blanks. */

int main(){
  int c,nother;
  nother = 0;
  while ((c = getchar()) != EOF)
    if ((c == '\n') || (c == '\t') || (c == ' '))
      ++nother;
  printf("%d\n", nother);
}
