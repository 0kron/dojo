#include<bits/stdc++.h>
using namespace std;
using ll = long long int;

/* 
* Given n, a random ordered list of n-1 digits ranging from 1 to n will be given, 
* meaning there would be one missing number, find it quickly. 
*
* Used the Euler's sum to calculate 1..n, and then substract it to the total sum
* of the given values.
*/
 
int main(){
	ll n, m, aux = 0, total;
	cin >> n;
	total = n * (n + 1) / 2;
	for (int i = 0; i < n-1; i++){
		cin >> m;
		aux += m;
	}
	printf("%lld\n", total - aux);
	return 0;
}
