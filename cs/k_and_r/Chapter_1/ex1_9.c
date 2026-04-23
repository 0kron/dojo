#include<stdio.h>

/* Ex. 1.13 - Replace secuence of non-blanks by a single blankspace. */

int main(){
  int c, prev;
  while ((c = getchar()) != EOF)
    if ((c == '\n') || (c == '\t') || (c == ' ')) {
      if (prev != ' '){
        prev = ' ';
        putchar(' ');
      }
    } 
    else {
      putchar(c); 
      prev = c;
    }
}
