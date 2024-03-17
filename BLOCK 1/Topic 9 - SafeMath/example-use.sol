//SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

import "../../../BLOCK 1/Topic 9 - SafeMath/SafeMath.sol";


contract calculationsInsurance {

    //We must declare for which type of data we will use the library
    using SafeMath for uint;

    //Safe addition function
    function sum(uint _a, uint _b) public pure returns (uint){
        return _a.add(_b);
    }

    //Subtraction function
    function Subtraction(uint _a, uint _b) public pure returns (uint){
        return _a.sub(_b);
    }

    //multiplication function
    function multiplication(uint _a, uint _b) public pure returns (uint){
        return _a.mul(_b);
    }
}