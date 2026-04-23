#include<stdio.h>
#define MAXSIZE 1000
int any(char s1[], char s2[]); 

/* Ex. 2.5 - Function any finds the first appearence of any s2 char in s1. */

int main(){
  char s1[MAXSIZE], s2[MAXSIZE]; 
  int ind; 
  printf("Ingrese la cadena original: ");
  scanf("%s", &s1); 
  printf("Ingrese los caracteres a buscar: ");
  scanf("%s", &s2); 
  ind = any(s1, s2); 
  (ind >= 0) ? printf("Primera aparición: %c - %d\n", s1[ind], ind) : printf("No hay apariciones\n");
  return 0; 
}

int any(char s1[], char s2[]){
  int c, n, up;
  int i; 
  for (n = 0; s1[n] != '\0' && s1[n] != s2[c]; n++);
  up = n; 
  for (c = 0; s2[c] != '\0'; c++){
    for (i = 0; s1[i] != s2[c] && i < up; i++); 
    up = i; 
    /* printf("%c - %d\n", s2[c], up); */
  }
  return (up < n) ? up : -1;
}
