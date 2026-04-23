#include<stdio.h>

/* Ex. 1.4 - Celsius to Fahrenheit. */

int main(){
  float celsius, fahr; 
  int lower, upper, step; 
  lower = -20; upper = 150; step = 10; 
  celsius = lower; 
  printf("Celsius\tFahrenheit\n"); 
  while (celsius <= upper){
    fahr = (9.0/5.0) * celsius + 32.0; 
    printf("%7.0f\t%10.1f\n", celsius, fahr); 
    celsius = celsius + step; 
  }
}
