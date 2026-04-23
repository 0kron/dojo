#include<stdio.h>
#define IN  1
#define OUT 0

/* Ex. 1.12 - Print the intput one word per line. */

int main() {
  int c, state;
  state = IN; 
  while ((c = getchar()) != EOF) {
    if ((c == '\n') || (c == ' ') || (c == '\t')) 
      state = OUT;
    else if (state == OUT){
      putchar('\n');
      state = IN; 
    }
    if (state == IN) 
      putchar(c);
  }
  putchar('\n'); 
}
