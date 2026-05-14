#include<bits/stdc++.h>

using namespace std;
using ll = long long int;

/*
* Increasing Array: Given an array, return how many +1's are needed in order
* to make it increasing, not strict. 
*
* Thus, we just take the maximum till this point and add to the current as
* needed to reach the maximum.
*/

int main(){
	int prev = 0, act;
	ll moves = 0;
	int n; cin >> n;
	while (n--){
		cin >> act;
		if (act < prev) moves += prev - act;
		else prev = act;
	}
	cout << moves << "\n";

	return 0;
}
