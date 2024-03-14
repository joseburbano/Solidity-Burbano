// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Mappings {

    //Declare a mapping to choose a number
    mapping(address => uint) public chooseNumber;

    function ChooseNumber(uint _number) public {
        chooseNumber[msg.sender] = _number;
    }

    function consultNumber() public view returns (uint){
        return chooseNumber[msg.sender];
    }

    //We declare a mapping that relates a person's name to his or her amount of money.
    mapping(string => uint) amountMoney;

    function Money(string memory _name, uint _quantity) public {
        amountMoney[_name] = _quantity;
    }

    function consultMoney(string memory _name) public view returns (uint){
        return amountMoney[_name];
    }

    //Example of mapping with a complex data type
    struct Person {
        string name;
        uint age;
    }

    mapping(uint => Person) people;

    function dni_Person(uint _numberDni, string memory _name, uint _age) public {
        people[_numberDni] = Person(_name, _age);
    }

    function ViewPerson(uint _dni) public view returns (Person memory){
        return people[_dni];
    }

}