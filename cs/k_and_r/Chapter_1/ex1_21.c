#include<stdio.h>
#define TABSTOP 3 

/* Ex. 1.21 - Write entab that replaces strings of blanks by the minimum of tabs. */

int entab(void);

int main(){
  entab(); 
  return 0; 
}

int entab(){
  int c; 
  int nblanks = 0, j; 
  while ((c = getchar()) != EOF){
    if (c == ' '){ 
      for (nblanks = 1; (c = getchar()) == ' '; nblanks++); 
      for (j = 0; j < nblanks / TABSTOP; j++) putchar('\t'); 
      for (j = 0; j < nblanks % TABSTOP; j++) putchar(' '); 
      if (c != EOF) putchar(c); 
    } 
    else
      putchar(c); 
  }
  return 0; 
}

