#include <bits/stdc++.h>

using namespace std;
using ll = long long int;

/* 
* Number Spiral
*/

int main(){
	int n; cin >> n;
	ll x, y, res, max, min;
	while (n--){
		cin >> y >> x;
		if (x > y){max = x; min = y;}
		else{max = y; min = x;}
		res = max * max - (max - 1); // Standing in the diagonal of the table.
		// Directions to move
		if (max % 2 == 0){
			if (min == y) res -= max - min;
			else res += max - min;
		}
		else{
			if (min == y) res += max - min;
			else res -= max - min;
		}
		cout << res << endl;
	}

	return 0;
}
