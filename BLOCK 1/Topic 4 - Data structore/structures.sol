// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract Structures {

    //Client of a payment website
    struct customer {
        uint id;
        string name;
        string dni;
        string email;
        uint phone_number;
        uint credit_number;
        uint secret_number;
    }

    //We declare a variable of type client
    customer customer_1 = customer(1, "Jose", "12345678B", "jose@udemy.com", 12345678, 1234, 11);

    //Amazon (any product purchase and sale site)
    struct product {
        string name;
        uint price;
    }

    //We declare a variable of type product
    product movil = product("samsung", 300);

    //ONG cooperative project to help various causes
    struct ONG {
        address ong;
        string name;
    }
    //We declare a variable of type ONG
    //ONG caritas;
    ONG caritas = ONG(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, "Caritas");

    struct Cause {
        uint id;
        string name;
        uint price_objet;
    }
    //We declare a variable of type Cause
    Cause medicines = Cause(1, "medicamentos", 1000);
}