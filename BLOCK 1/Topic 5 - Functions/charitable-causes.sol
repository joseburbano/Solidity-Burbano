// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract causesBeneficial {

    //Statements required
    struct Cause {
        uint Id;
        string name;
        uint price_object;
        uint amount_recovered;
    }

    uint counter_causes = 0;
    mapping(string => Cause) causes;

    //Allows you to register a new case
    function newCause(string memory _name, uint _price_object) public payable {
        counter_causes = counter_causes++;
        causas[_name] = Cause(counter_causes, _name, _price_object, 0);
    }

    //This function returns true if we can donate to a cause and false otherwise.
    function targetFulfilled(string memory _name, uint _donate) private view returns (bool){

        bool flag = false;
        Cause memory cause = causes[_name];

        if (cause.price_object >= (cause.amount_recovered + _donate)) {
            flag = true;
        }
        return flag;

    }

    //This function allows us to donate to a cause
    function donate(string memory _name, uint _quantity) public returns (bool){

        bool accept_donation = true;

        if (targetFulfilled(_name, _quantity)) {
            causes[_name].amount_recovered = causes[_name].amount_recovered + _quantity;
        } else {
            accept_donation = false;
        }
        return accept_donation;
    }

    //This function tells us if we have reached the target price.
    function check_cause(string memory _name) public view returns (bool, uint){

        bool limit_reached = false;
        Cause memory cause = causes[_name];

        if (cause.amount_recovered >= cause.price_object) {
            limit_reached = true;
        }

        return (limit_reached, cause.amount_recovered);

    }

}