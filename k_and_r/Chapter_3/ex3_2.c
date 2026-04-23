#include<stdio.h>
#define MAXIN 2000
#define MAXOUT 4000

void escape(char from[], char to[]);
void descape(char from[], char to[]);

/* Ex. 3.2 - Function espace to convert invisible characters into visable ones */

int main() {
  int c, i; 
  char s[MAXIN]; 
  char t[MAXOUT]; 
  i = 0; 

  while (((c = getchar()) != EOF) && i < MAXIN)
    s[i++] = c; 
  s[i] = '\0'; 

  printf("Espacios visibles:_________________\n"); 
  escape(s, t); 
  printf("%s\n", t); 
  printf("\nEspacios recuperados:____________\n"); 
  descape(t, s); 
  printf("%s\n", s);
  return 0; 
}

void escape(char from[], char to[]){
  int i = 0, j = 0; 
  while (i < MAXIN && from[i] != '\0'){
    switch(from[i]) {
      case '\n': 
	to[j++] = '\\'; 
	to[j++] = 'n'; 
	break;
      case '\t': 
	to[j++] = '\\'; 
	to[j++] = 't'; 
	break;
      default: 
	to[j++] = from[i];
	break;
    }
    i++; 
  }
  to[j] = '\0'; 
}

void descape(char from[], char to[]){
  int i = 0, j = 0;
  int quotes = 0; 
  while (i < MAXOUT && from[i] != '\0'){
    /* eliminate the quotes mistaken */
    if (from[i] == 0x22 || from[i] == 0x27) quotes = ~quotes;
    if (from[i] == '\\' && !quotes)
      switch(from[++i]) {
	case 'n': 
	  to[j++]= '\n'; 
	  break;
	case 't': 
	  to[j++] = '\t'; 
	  break;
	default: 
	  to[j++] = from[i-1]; 
	  to[j++] = from[i];
	  break;
      }
    else 
      to[j++] = from[i]; 
    i++; 
  }
  to[j] = '\0';
}
