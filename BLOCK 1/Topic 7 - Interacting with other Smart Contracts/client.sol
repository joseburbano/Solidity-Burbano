// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
//import "./bank.sol";
import {Bank, Bank2} from "./bank.sol";


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


