// Your First C++ Program

#include <iostream>
#include "main.hpp"
#include "app.hpp"

using namespace std;
int add_two_numbers(int a, int b)
{
    int sum = a + b;
    return sum;
}


int factorial(int number) { return number <= 1 ? number : factorial(number - 1) * number; }


int main()
{
    app_main();
}


int app_main() {
    int number = add_two_numbers(1,2);
    return number;
}