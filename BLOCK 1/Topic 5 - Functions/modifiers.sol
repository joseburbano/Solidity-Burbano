// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract view_pure_payable {

    //Modifier of view
    string[] list_students;

    function new_student(string memory _student) public {
        list_students.push(_student);
    }

    function see_student(uint _position) public view returns (string memory){
        return list_students[_position];
    }

    uint x = 10;

    function addAx(uint _a) public view returns (uint){
        return x + _a;
    }

    //Modifier of pure

    function exponentiation(uint _a, uint _b) public pure returns (uint){
        return _a ** _b;
    }

    //Modifier of payable

    mapping(address => portfolio) MoneyWallet;

    struct portfolio {
        string name_person;
        address address_person;
        uint money_person;
    }

    function Pay(string memory _namePerson, uint _quantity) public payable {
        portfolio memory my_portfolio;
        my_wallet = portfolio(_namePerson, msg.sender, _quantity);
        MoneyWallet[msg.sender] = mi_cartera;
    }

    function seeBalance() public view returns (portfolio){
        return MoneyWallet[msg.sender];
    }
}