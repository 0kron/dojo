#include<stdio.h>
#define MAXLINE 1000
#define MINLINE 80

int getline(char line[], int maxline); 
void copy(char to[], char from[]); 

int main(){
  int len; 
  char line[MAXLINE]; 

  while((len = getline(line, MAXLINE)) > 0)
    if (len > MINLINE) 
      printf("Length: %d\nLine:%s\n", len, line); 
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
