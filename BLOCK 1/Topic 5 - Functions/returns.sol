// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract ReturnValues {

    //Function that returns a greeting
    function greetings() public returns (string){
        return "greetings";
    }

    //This function calculates the result of a multiplication of two integers.
    function Multiplication(uint _a, uint _b) public returns (uint){
        return _a * _b;
    }

    //This function returns true if the number is even and false otherwise.
    function odd_even(uint _a) public returns (bool){

        bool flag;

        if (_a % 2 == 0) {
            flag = true;
        } else {
            flag = false;
        }

        return flag;
    }

    //We perform a function that returns the quotient and the remainder of a division.
// plus a boolean variable that is true if the remainder is 0 and false otherwise
    function division(uint _a, uint _b) public returns (uint, uint, bool){
        uint q = _a / _b;
        uint r = _a % _b;
        bool multiplo = false;

        if (r == 0) {
            multiplo = true;
        }

        return (q, r, multiplo);
    }

    //Practice for handling returned values

    function numbers() public returns (uint, uint, uint, uint, uint, uint){
        return (1, 2, 3, 4, 5, 6);
    }

    //Multiple assignment
    function all_values() public {

        //We declare the variables where the return values of the function numbers() are stored.
        uint a;
        uint b;
        uint c;
        uint d;
        uint e;
        uint f;
        //Perform multiple assignment
        (a, b, c, d, e, f) = numbers();
    }

    function last_value() public {

        (,,,,,uint last) = numbers();
    }
}