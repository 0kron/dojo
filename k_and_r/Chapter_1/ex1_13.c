#include<stdio.h>
#define IN  1
#define OUT 0
#define MAXW 1000 /* a lo más 1000 palabras */

/* Ex. 1.13 - Histogram of the length of words, horizontal output. */

int main() {
  int c, state, i, maxl;
  int lenw[MAXW];
  maxl = 0;
  i = -1; 
  state = OUT; 

  while ((c = getchar()) != EOF) {
    if ((c == '\n') || (c == ' ') || (c == '\t')) 
      state = OUT;
    else if (state == OUT){
      state = IN; 
      ++i;
      lenw[i] = 1;
    }
    else if (state == IN){
      ++lenw[i]; 
      if (lenw[i] > maxl) maxl = lenw[i]; 
    }
  }
  int x, y; 
  for (y = maxl; y > 0; y = y - 1){
    for (x = 0; x <= i; x = x + 1){
      if (lenw[x] >= y) putchar('#'); 
      else putchar(' ');
    }
    putchar('\n');
  }
}
