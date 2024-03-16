// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract loop_for {

    //Sum of the first 100 numbers starting from the number entered.

    function sum(uint _number) public pure returns (uint){

        uint Sum = 0;

        for (uint i = _number; i < (100 + _number); i++) {
            Sum = Sum + i;
        }

        return Sum;
    }

    //This is a dynamic array of addresses
    address [] addresses;

    //Add an address to the array
    function associate() public {
        addresses.push(msg.sender);
    }

    //Check if the address is in the address array
    function checkAssociation() public view returns (bool, address){

        for (uint i = 0; i < addresses.length; i++) {
            if (msg.sender == addresses[i]) {
                return (true, addresses[i]);
            }
        }
    }

    //Double for: Add the first 10 factorials.
    //n! = n*(n-1)*(n-2)*...*2*1

    function sumFactorial() public pure returns (uint){

        uint sum = 0;
        for (uint i = 1; i <= 10; i++) {

            uint factorial = 1;

            for (uint j = 2; j <= i; j++) {
                factorial = factorial * j;
            }

            sum = sum + factorial;
        }
        return suma;
    }
}


