#include<stdio.h>
#define MAXLINE 2000

void reverse(char s[]); 

int main(){
  char in[MAXLINE];
  while(scanf("%s", in) != 0){
    reverse(in); 
    printf("%s\n", in); 
  }
  return 0; 
}

void reverse(char s[]){
  int n, i; 
  char aux; 
  for (n = 0; s[n] != '\0'; ++n); 
  for (i = 0; i < (n/2); ++i){
    aux = s[n-1-i]; 
    s[n-1-i] = s[i];
    s[i] = aux;
  }
}
