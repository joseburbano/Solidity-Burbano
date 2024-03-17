// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract loopWhile {

    //Sum of odd numbers less than or equal to 100
    function odd_sum() public pure returns (uint){
        uint sum = 0;
        uint conter = 1;

        while (conter < 100) {

            if (conter % 2 != 0) {
                sum = sum + conter;
            }
            conter++;
        }
        return sum;
    }

    //Wait 5 seconds

    uint time;

    function setTime() public {
        time = now;
    }

    function wait() public view returns (bool){

        while (now < time + 5 seconds) {
            return false;
        }
        return true;
    }

    //Next prime number
    //Prime number is a number that is divisible by 1 and the same number.
    function nextPrime(uint _p) public pure returns (uint){

        uint conter = _p + 1;

        while (true) {

            //We check if the counter is prime
            uint aux = 2;
            bool prime = true;

            while (aux < conter) {
                if (conter % aux == 0) {
                    prime = false;
                    break;
                }
                aux++;
            }

            if (prime == true) {
                break;
            }

            conter++;
        }
        return conter;
    }
}


