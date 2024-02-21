// SPDX-License-Identifier: MIT
//Starting version
pragma solidity >=0.4.4 <0.7.0;
//Import the ERC20.sol file that is in our working directory
import "./ERC20.sol";

contract FirstContract {
//In this variable is the address of the person deploying the contract.
    address owner;
    ERC20Basic token;
/*
We store in the owner variable the address of the person who displays the contract.
initialize the number of tokens
*/
    constructor() public {
        owner = msg.sender;
        token = new ERC20Basic(1000);
    }
}

