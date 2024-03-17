// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;

library Operations {

    function division(uint _i, uint _j) public pure returns (uint){
        require(_j > 0, "We cannot divide by 0");
        return _i / _j;
    }

    function multiplication(uint _i, uint _j) public pure returns (uint){

        if ((_i == 0) || (_j == 0)) {
            return 0;
        } else {
            return _i * _j;
        }
    }
}

contract calculations {

    using Operations for uint;

    function calculation(uint _a, uint _b) public pure returns (uint, uint){
        uint q = _a.division(_b);
        uint m = _a.multiplication(_b);
        return (q, m);
    }
}