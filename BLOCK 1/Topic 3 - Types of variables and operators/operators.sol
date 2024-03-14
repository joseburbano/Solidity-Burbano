// SPDX-License-Identifier: MIT
//Indicating the version
pragma solidity >=0.4.4 <0.7.0;

contract Operators {

    // Mathematical operators
    uint a = 32;
    uint b = 4;

    uint public sum = a + b;
    uint public subtract = a - b;
    uint public division = a / b;
    uint public multiplication = a * b;
    uint public waste = a % b;
    uint public exponentiation = a ** b;

    //Compare integers
    uint c = 3;
    uint d = 3;


    bool public test_1 = a > b;
    bool public test_2 = a < b;
    bool public test_3 = c == d;
    bool public test_4 = a == d;
    bool public test_5 = a != b;
    bool public test_6 = a >= b;

    //Boolean operators

    //Criterion of divisibility by 5: if the number ends in 0 or 5.

    function divisibility(uint _k) public pure returns (bool){

        uint last_chart = _k % 10;

        if ((last_chart == 0) || (last_chart == 5)) {
            return true;
        } else {
            return false;
        }

    }

    function divisibilityV2(uint _k) public pure returns (bool){

        uint last_chart = _k % 10;

        if ((last_chart != 0) && (last_chart != 5)) {
            return false;
        } else {
            return true;
        }
    }
}