// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;


contract ExampleInteger {
    
    uint256 public myUint;

    uint8 public myUint8;

    int public myInt = -10; // -2 ^ 128 - 2 ^ 128 -1

    function setMyUint(uint256 _myUint) public {
        myUint = _myUint;
    }

    function setMyUint8(uint8 _myUint8) public {
        myUint8 = _myUint8;
    }

    function incrementUint8() public {
        myUint8++;
    }


}