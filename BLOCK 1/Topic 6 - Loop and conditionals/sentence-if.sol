// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract sentenceIf {

    //Winning number
    function tryLuck(uint _number) public pure returns (bool){

        bool winner;
        if (_number == 100) {
            winner = true;
        } else {
            winner = false;
        }

        return winner;

        /*
        bool winner = false;
        if(_number==100){
            winner =true;
        }
        return winner;
        */
    }

    //Calculate the absolute value of a number

    function absoluteValue(int _k) public pure returns (uint){

        uint absolute_value_number;
        if (_k < 0) {
            absolute_value_number = uint(- _k);
        } else {
            absolute_value_number = uint(_k);
        }

        return absolute_value_number;
    }

    //Return true if the entered number is even and has three digits.

    function parThreeFigures(uint _number) public pure returns (bool){
        bool flag;

        if ((_number % 2 == 0) && (_number >= 100) && (_number < 999)) {
            flag = true;
        } else {
            flag = false;
        }

        return flag;
    }

    //Voting
    //There are only three candidates: Joan, Gabriel and Maria.

    function vote(string memory _candidate) public pure returns (string memory){

        string memory message;

        if (keccak256(abi.encodePacked(_candidate)) == keccak256(abi.encodePacked("Joan"))) {
            message = "You have correctly voted for Joan";
        } else if (keccak256(abi.encodePacked(_candidate)) == keccak256(abi.encodePacked("Gabriel"))) {
            message = "You have successfully voted for Gabriel";
        } else if (keccak256(abi.encodePacked(_candidate)) == keccak256(abi.encodePacked("Maria"))) {
            message = "You have correctly voted for Maria";
        } else {
            message = "You have voted for a candidate who is not on the list.";
        }

        return message;
    }

}