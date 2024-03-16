// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.9.0;
pragma experimental ABIEncoderV2;

contract SmartContract1 {

    // Factory information storage
    mapping(address => address) public MyStaffContract;

    function Factory() public {
        address address_new_contract = address(new SmartContract2(msg.sender));
        MyStaffContract[msg.sender] = address_new_contract;
    }
}

contract SmartContract2 {

    address public owner;
    constructor (address _address) public {
        owner = _address;
    }
}

