#include <bits/stdc++.h>

using namespace std;
using ll = long long int;

/*
* Repetitions: Given a string with DNA format, give the maximum number of 
* equal arrays that are next to each other. 
*
* Reading character by character, it only matters that the current one is 
* different or equal to the previous.
*/

int main(){
	int mx = 1, count = 1; 
	char prev = ' ', act;
	while (scanf("%c", &act) != EOF){
		if (act == prev){
			count++; mx = max(count, mx);
		}
		else count = 1;
		prev = act;
	}
	cout << mx << "\n";

	return 0;
}
