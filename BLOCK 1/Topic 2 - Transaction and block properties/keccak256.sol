// SPDX-License-Identifier: MIT
//Choose version solidity
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract hash {

    //Computing the hash of a string
    function calcularHash(string memory _chain) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain));
    }

    //Computing the hash of a string, an integer and an address
    function calcularHash2(string memory _chain, uint _k, address _address) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain, _k, _address));
    }
    //Hash computation of a string, an integer and an address plus another string and integer that are not there
    //within a variable
    function calcularHash3(string memory _chain, uint _k, address _address) public pure returns (bytes32){
        return keccak256(abi.encodePacked(_chain, _k, _address, "hello", uint(2)));
    }
}