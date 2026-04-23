#include<stdio.h>

/* Ex. 1.15 - Fahrenheit to Celsius with function. */

float f2c(float); 

float f2c(float f){
  return (5.0/9.0) * (f - 32);
}

int main(){
  float fahr, celsius; 
  int lower, upper, step; 
  lower = 0; upper = 300; step = 20; 

  printf("Fahrenheit\tCelsius\n"); 

  for (fahr = lower; fahr <= upper; fahr = fahr + 1)
    printf("%10.0f\t%7.1f\n", fahr, f2c(fahr)); 
}
