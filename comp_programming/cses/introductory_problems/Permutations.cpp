#include <bits/stdc++.h>
using namespace std;
using ll = long long int;

/*
* Permutations: Given a limit n, give the permutation from 1 to n, such that
* it does not have adjecent subsequent numbers.
*
* We find that no couple of odd (even resp) numbers are subsequent, so we 
* print them first, and then the opposite with the even (odd resp) numbers.
* and that covers the entirety of 1 to n numbers.
*/

int main(){
	int n; cin >> n;
	if (n == 3 || n == 2) cout << "NO SOLUTION\n";
	else{
		for (int i = 2; i <= n; i+=2){
			cout << i << " ";
		}
		for (int i = 1; i <= n; i+=2){
			cout << i << " ";
		}
		cout << "\n";
	}
	return 0;
}
