#include<stdio.h> 
#define MAXLINE 1000

int getline(char line[], int maxline); 
void rm_trailing(char from[], int size); 

int main(){
  int len; 
  char line[MAXLINE]; 

  while((len = getline(line, MAXLINE)) > 0)
    if (len != 1){
      rm_trailing(line, len);
      printf("%s", line); 
    }
  return 0; 
}

int getline(char s[], int lim){
  int c, i, j = 0; 
  for (i=0; (c = getchar())!=EOF && c !='\n'; ++i)
    if (i < lim-1){
      s[i] = c;
      ++j; 
    }

  if ((i < lim) && (c == '\n')){
    s[i] = c;
    ++i;
    ++j; 
  }
  s[j] = '\0'; 
  return i;
}

void rm_trailing(char s[], int size){
  int i;
  if (size > 1000) size = 1000; 
  for (i=size-1; (s[i] == ' ') || (s[i] == '\t'); --i){
    s[i] = '\n'; s[i+1] = '\0'; 
  }
}
