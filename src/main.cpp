// Your First C++ Program

#include <iostream>
#include "main.hpp"
#include "app/app.hpp"
using namespace std;
int add_two_numbers(int a, int b)
{
    int sum = a + b;
    return sum;
}

int main() {
    int number = add_two_numbers(1,2);

    cout << number << endl;
    print_hello();
    cout << "hello world" << endl;
    return number;
}