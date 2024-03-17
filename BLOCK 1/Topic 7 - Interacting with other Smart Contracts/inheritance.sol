// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Bank {

    //We define a complex data type customer
    struct client {
        string _name;
        address addresses;
        uint money;
    }

    //mapping that relates the customer name to the customer data type
    mapping(string => client) customers;

    //Function that allows us to register a new customer.

    function newClient(string memory _name) public {
        customers[_name] = client(_name, msg.sender, 0);
    }
}

contract Client is Bank {

    function CustomerSignUp(string memory _name) public {
        newClient(_name);
    }

    function LoginMoney(string memory _name, uint _quantity) public {
        customers[_name].money = customers[_name].money + _quantity;
    }

    function WithdrawMoney(string memory _name, uint _quantity) public returns (bool){
        bool flag = true;

        if (int(customers[_name].dinero) - int(_quantity) >= 0) {
            customers[_name].dinero = customers[_name].dinero - _quantity;
        } else {
            flag = false;
        }
        return flag;
    }

    function ConsultMoney(string memory _name) public view returns (uint){
        return customers[_name].money;
    }
}


