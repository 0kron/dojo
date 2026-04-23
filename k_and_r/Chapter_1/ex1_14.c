#include<stdio.h>
#define first '!'
#define last '~'

/* Ex. 1.14 - Print a historgram of the frecuencies of different 
 * charactes in an input. */

int main() {
  int c, i, max;
  int achar[last - first];
  max = 0; 
  for (i = 0; i < (last - first); i = i + 1)
    achar[i] = 0; 

  while ((c = getchar()) != EOF) {
    if ((c <= last) && (c >= first)){
      ++achar[c-first]; 
      if (max < achar[c-first]) max = achar[c-first];
    }
  }
  int x, y; 
  for (y = max; y >= 0; y = y - 1){
    for (x = 0; x <= (last - first); x = x + 1){
      if (y > 0){
	if (achar[x] >= y) putchar('#'); 
	else putchar(' ');
      }
      else putchar(x+first); 
    }
    putchar('\n');
  }
}
