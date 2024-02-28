//choose stated version
pragma solidity >=0.4.4 <0.7.0;


contract integer {

    //Unsigned integer variables
    uint  myFirstInteger;
    uint  myFirstInitializedInteger = 3;
    uint  cota = 5000

    //Unsigned integer variab with a specified number of bits;
    uint8 integer8Bits;
    uint64 integer64Bits = 7000;
    uint16 integer16Bits;
    uint256 integer256Bits;

    //Integer variables with sign
    int myFirstINtegerWithSign;
    int myFirst = -32;
    int myFirst2 = 65;

    //Signed integer variables with a specific number of bits
    int72 signedInteger72Bits;
    int240 signedInteger240Bits = 90000;
    int256 signedInteger256Bits;
}