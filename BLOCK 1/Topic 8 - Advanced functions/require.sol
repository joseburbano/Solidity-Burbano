// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Require {

    //Password verification function
    function password(string memory _password) public pure returns (string memory){
        require(keccak256(abi.encodePacked(_password)) == keccak256(abi.encodePacked("12345")), "Incorrect password");
        return "Correct password";
    }

    //Payment function
    uint time = 0;
    uint public wallet = 0;

    function pagar(uint _quality) public returns (uint){
        require(now > time + 5 seconds, "You still can't pay");
        time = now;
        wallet = wallet + _quality;
        return wallet;
    }

    //function with a list
    string [] names;

    function nuevoNombre(string memory _name) public {
        for (uint i = 0; i < names.length; i++) {
            require(keccak256(abi.encodePacked(_nombre)) != keccak256(abi.encodePacked(names[i])), "already on the list");
        }
        names.push(_name);
    }
}