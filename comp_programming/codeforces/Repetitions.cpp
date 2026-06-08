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
	string cadena; cin >> cadena;
	int max_count = 1, act_count = 1;
	char prev = ' ';

	for (char c : cadena){
		if (c == prev){
			act_count++;
			max_count = max(max_count, act_count);
		}
		else {
			act_count = 1;
		}
		prev = c;
	}
	cout << max_count << "\n";
	return 0;
}

// #include <bits/stdc++.h>
//  
// using namespace std;
// using ll = long long int;
//  
// int main(){
// 	int mx = 1, count = 1; 
// 	char prev = ' ', act;
// 	while (scanf("%c", &act) != EOF){
// 		if (act == prev){
// 			count++; mx = max(count, mx);
// 		}
// 		else count = 1;
// 		prev = act;
// 	}
// 	cout << mx << "\n";
//  
// 	return 0;
// }
