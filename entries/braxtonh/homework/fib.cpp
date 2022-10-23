#include "fib.hpp"

#include <string>
#include <iostream>
#include <stdexcept>

using namespace std;

int Fibonacci::fib(const int n) const
{
	// cout << "start" << endl;
	if (n < 0) {
		// HOW??
		cout << "wtfff got ( " << n << " )" << endl;
		// https://stackoverflow.com/questions/8480640/how-to-throw-a-c-exception
		throw invalid_argument("received negative value");
	} else if (n == 0) {
		// cout << "********************* LINE 12" << endl;
		// https://stackoverflow.com/questions/1451170/in-the-fibonacci-sequence-is-fib0-0-or-1
		return 0; //1; ??????
	} else if (n == 1) {
		// cout << "!!!!!!!!!!!!!!!!!!!!!!!!!!!!! LINE 15" << endl;
		return 1;
	} else {
		// cout << "GOT TO LINE 19" << endl;
		// cout << "got here" << endl;
		// int retVal = fib(n - 1) + fib(n - 2);
		return fib(n - 1) + fib(n - 2);
		// // cout << "here" << endl;
		// cout << "returning: (" << retVal << " )" << endl;
	}
}
