// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 0.7.0;

contract Foot {

    struct dish {
        string name;
        string ingredients;
        uint time;
    }
    //Declare a dynamic array of plates
    dish [] dishes;
    //We relate with a mapping the name of the dish with its ingredients.
    mapping(string => string) ingredients;

    //Function that allows us to register a new plate
    function NewDish(string memory _name, string memory _ingredients, uint _time) internal {
        dishes.push(dish(_name, _ingredients, _time));
        ingredients[_name] = _ingredients;
    }

    function Ingredients(string memory _name) internal view returns (string memory){
        return ingredients[_name];
    }

}

contract Sandwitch is Foot {

    function sandwitch(string memory _ingredients, uint _time) external {
        NuevoPlato("Sandwitch", _ingredients, _time);
    }

    function viewIngredients() external view returns (string memory){
        return Ingredients("Sandwitch");
    }
}


