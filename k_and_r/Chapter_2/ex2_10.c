#include<stdio.h>
#define MAXSTR 1000
char lower(char c);

/* Ex. 2.10 - Lower function with conditional expression. */

int main(){
  int i; 
  char texto[MAXSTR];
  printf("Ingrese un texto: "); 
  scanf("%[^\n]s", &texto); 
  for (i = 0; texto[i] != '\0'; i++) texto[i] = lower(texto[i]); 
  printf("Su texto en lowecase:%s\n", texto); 
  return 0; 
}

char lower(char c){
  return (c <= 'Z' && c >= 'A') ? c - ('A' - 'a') : c; 
}

