#include<stdio.h>
#define MAXL 1000

void expand(char from[], char to[]); 

/* Ex. 3.3 - expand recibe una combinación de intervalos y los guarda. */ 

int main() {
  char s1[MAXL]; 
  char s2[MAXL]; 
  printf("Ingrese el intervalo: "); 
  scanf("%[^\n]", &s1); 
  expand(s1, s2); 
  printf("Resultado: \n%s\n", s2); 
  return 0; 
}

void expand(char from[], char to[]) {
  int i = 0, j = 0, x; 
  int min = 32, max = 126;
  while (from[i] != '\0'){
    if (from[i] != '-') 
      min = from[i++], to[j++] = min; 
    
    for (; from[i] == '-'; i++); 
    
    if (from[i] != '\0') max = from[i++]; 

    for (x = 1; x <= max - min; x++)
      to[j++] = x + min; 

    min = max, to[j] = '\0'; 
  }
}
