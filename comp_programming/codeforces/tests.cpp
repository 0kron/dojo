#include<bits/stdc++.h>

using namespace std;
using ll = long long int;

/* 
* Constrains: n <= 1e6
* String - characters (8 bits - 1 byte)
* string cadena, |cadena| = n, entonces cadena pesa 1Mb
* In: ATTCGGGA
* Out: 3
*/


int main(){
	int n; cin >> n;
	int max_count = 1, act_count = 1;
	char c, prev = ' ';

	while (n--){
		cin >> c;
		cout << prev << c << endl;

		prev = c;
	}


	return 0;
}
