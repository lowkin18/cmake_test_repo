#include <catch2/catch_test_macros.hpp>
#include "main.hpp"
#include "app.hpp"

unsigned int Factorial( unsigned int number ) {
    return number <= 1 ? number : Factorial(number-1)*number;
}

TEST_CASE( "Factorials are computed", "[factorial]" ) {
    REQUIRE( Factorial(1) == 1 );
    REQUIRE( Factorial(2) == 2 );
    REQUIRE( Factorial(3) == 6 );
    REQUIRE( Factorial(10) == 3628800 );
}


TEST_CASE( "Add Two Numbers", "[addition]") {

    REQUIRE( add_two_numbers(1,2) == 3);
    
}

TEST_CASE( "Add Three Numbers", "[addition]") {

    REQUIRE( adding_three_numbers(1,2,3) == 6);
    
}