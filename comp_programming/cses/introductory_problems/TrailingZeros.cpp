#include<bits/stdc++.h>
using namespace std;
using ll = long long int;

/*
* Trailing Zeros: As the name say, output how many zeros the number n! have
* We can notice that we only have to find how many times is n divisible by
* 5, as for every five there would be at least a 2, and then the zeros appear.
*/

int main(){
	int n; cin >> n;
	int res = 0, act = 1, i = 1;
	while (act != 0){
		act = n / pow(5, i);
		res += act;
		i++;
	}
	cout << res << "\n";
	return 0;
}
