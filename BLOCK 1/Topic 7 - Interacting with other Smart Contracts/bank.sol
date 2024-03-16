// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Bank {

    //We define a complex data type customer
    struct client {
        string _name;
        address _addresses;
        uint _money;
    }

    //mapping that relates the customer name to the customer data type
    mapping(string => client) customers;

    //Function that allows us to register a new customer.
    function newClient(string memory _name) public {
        customers[_name] = client(_name, msg.sender, 0);
    }
}

contract Bank2 {

}

contract Bank3 {

}