// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Modifier {

    //Example of a single contract owner can execute a function
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier soloOwner(){
        require(msg.sender == owner, "You do not have permissions to run the function");
        _;
    }

    function example1() public soloOwner() {
        //Function code for the owner of the contract
    }

    struct client {
        address addresses;
        string name;
    }

    mapping(string => address) customers;

    function altaClient(string memory _name) public {
        customers[_name] = msg.sender;
    }

    modifier onlyCustomers(string memory _name){
        require(customers[_name] == msg.sender);
        _;
    }

    function example2(string memory _name) public onlyCustomers(_name) {
        //Functional logic for customers
    }

    //Driving example
    modifier MayorAge(uint _ageMinima, uint _ageUser){
        require(_ageUser >= _ageMinima);
        _;
    }

    function drive(uint _age) public MayorAge(18, _age) {
        //Code to be executed for drivers of legal age
    }
}