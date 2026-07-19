#include <bits/stdc++.h>
using namespace std;
using ll = long long int;

/*
* Bit Strings, give the number of different arrays possible of '1' and '0' 
* of length n. i.e. Give 2^n modulo 10e9 + 7, something we can archive with
* bit shifting. Now, it is important to take the module *after* the shift.
*/

int main(){
	ll mod = 1e9 + 7;
	int n; cin>>n;
	ll res = 1;
	while (n--){
		res <<= 1LL;
		res %= mod;
	}
	cout << res << "\n";
	return 0;
}
