// SPDX-License-Identifier: MIT
// Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract more_variables {

    //String type variables (text strings)
    string my_firts_string;
    string public greetings = "Hello, ¿How is going?";
    string public string_empty = "";

    //Boolean variables
    bool miy_firts_booleano;
    bool public  flag_true = true;
    bool public flag_false = false;

    //Variables of type bytes
    bytes32 my_firts_bytes;
    bytes4 secunt_bytes;
    string public name = "Joan";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    bytes4 public identificator;

    function exampleBytes4() public {
        identificator = msg.sig;
    }

    //Address of variables
    address my_firts_addrees;
    address public addrees_local_1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public addrees_local_2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

}