#include<stdio.h>

/* Ex. 2.3 - Function htoi(s) that converts a string into an int, reading hex */

int htoi(char s[]); 

int main(){
  int res; 
  char str[100]; 
  printf("Ingrese un número hexadecimal: "); 
  scanf("%[^\n]s", &str);
  res = htoi(str); 
  printf("El número corresponde a:\n");
  printf("%10s\t%10d\n", "Decimal", res);
  printf("%10s\t%10o\n", "Octal", res);
  printf("%10s\t%10x\n", "Hexadecimal", res);
  return 0; 
}

int htoi(char s[]){
  int i, n; 
  int format = 1; 
  n = 0;
  for (i = 0; (s[i] >= '0' && s[i] <= '9') || 
	      (s[i] >= 'a' && s[i] <= 'f') ||
	      (s[i] >= 'A' && s[i] <= 'F');i++){
    n *= 16; 
    if ((s[i] == '0' && format) && (s[i+1] == 'x' || s[i+1] == 'X')){
      i += 2; 
      format = 0;
    }
    if (s[i] >= '0' && s[i] <= '9') n += s[i] - '0'; 
    else if (s[i] >= 'a' && s[i] <= 'f') n += 9 + s[i] - 'a'; 
    else n += 9 + s[i] - 'A'; 
  }
  return n; 
}

