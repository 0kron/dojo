#include<stdio.h>
#define MAXSIZE 1000
void squeeze(char s1[], char s2[]); 

/* Ex. 2.4 - Squeeze removes every character in s1 that appears in s2. */

int main(){
  char s1[MAXSIZE], s2[MAXSIZE]; 
  printf("Ingrese la cadena original: ");
  scanf("%s", &s1); 
  printf("Ingrese los caracteres a eliminar: ");
  scanf("%s", &s2); 
  squeeze(s1, s2); 
  printf("Resultado: %s\n", s1); 
  return 0; 
}

void squeeze(char s1[], char s2[]){
  int c, i, j; 
  for (c = 0; s2[c] != '\0'; c++)
    for (i = j = 0; s1[i] != '\0'; i++)
      if (s1[i] != s2[c])
	s1[j++] = s1[i]; 
    s1[j] = '\0'; 
}
