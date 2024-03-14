// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Arrays {

    //Array of fixed-length integers 5
    uint[5] public array_integers = [1, 2, 3];

    //Array of 32-bit fixed-length integers with 7 positions
    uint32[7] array_integers_32_bits;

    //Array of fixed-length strings 15
    string[15] array_strings;

    //Dynamic array of integers
    uint [] public array_dynamic_integers;

    struct Person {
        string name;
        uint age;
    }

    //Dynamic array of type Person
    Person [] public dynamic_array_people;

    function modificar_array() public {
        //dynamic_array_integers.push(_number);
        //dynamic_array_people.push(Person(_name, _age));
        array_integers[2] = 56;
    }

    uint public test = array_integers[2];

}