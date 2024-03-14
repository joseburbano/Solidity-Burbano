// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract functions {

    //Add within an array of addresses, the address of the person who calls the function
    address[] public addresses;

    function newAddress() public {
        addresses.push(msg.sender);
    }

    //Computing the hash of the data provided as a parameter
    bytes32 public hash;

    function hash(string memory _data) public {
        hash = keccak256(abi.encodePacked(_data));
    }

    //We declare a complex data type, which is food.
    struct foot {
        string name;
        string ingredients;
    }

    //Let's create a complex data type food
    foot public hamburger;

    function Hamburgers(string memory _ingredients) public {
        hamburger = comida("hamburger", _ingredients);
    }

    //We declare a complex data type, learner
    struct student {
        string name;
        address addresss;
        uint age;
    }

    bytes32 public hash_Id_student;

    //we calculate the student's hash
    function hashIdStudent(string memory _name, address _address, uint _age) private {
        hash_Id_student = keccak256(abi.encodePacked(_name, _address, _age));
    }

    //We save with the public function in a list of students
    student[] public list;
    mapping(string => bytes32) students;

    function newStudent(string memory _name, uint _age) public {
        list.push(student(_name, msg.sender, _age));
        hashIdStudent(_name, msg.sender, _age);
        students[_name] = hash_Id_student;
    }
}
