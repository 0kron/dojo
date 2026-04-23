#include<stdio.h>
#define WIDTH 100

char line[WIDTH+1]; 
int c; 

int fold(void);
void copy(char to[], char from[]); 

/* Ex. 1.22 - Fold long input lines. */

int main(){
  while ((len = fold()) > 0)
    printf("%s\n", line); 
  return 0; 
}

void fold(){
  int c; /* char storage */ 
  int line[]; /* line storage */ 
  int i = 0; /* line position */
  while (((c = getchar()) != EOF) && (c != '\n') && i < WIDTH)
    line[i++] = c; 
  line[i] = '\0'; 
  while (

    
