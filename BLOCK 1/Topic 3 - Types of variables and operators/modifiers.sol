// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract public_private_internal{

    //Modifier public
    uint public my_entero = 45;
    string public my_string = "Joan";
    address public owner;

    constructor() public{
        owner = msg.sender;
    }

    //Modifier private
    uint private my_private_whole = 10;
    bool private flag =true;

    function test(uint _k) public{
        my_private_whole = _k;
    }

    //Modifier internal
    bytes32 internal hash = keccak256(abi.encodePacked("hello"));
    address internal addresse = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

}