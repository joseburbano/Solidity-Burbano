//SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// Implementation of the SafeMath library to perform the operations in a safe way.
// Source: "https://gist.github.com/giladHaimov/8e81dbde10c9aeff69a1d683ed6870be"

/*
uint8 number = 255;
We have 2^8 possible numbers --> [0, 255];
number++; ---> OVERFLOW
*/


library SafeMath {

    //Subtractions
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        assert(b <= a);
        return a - b;
    }

    //Sums
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        assert(c >= a);
        return c;
    }

    //multiplication
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }
}



