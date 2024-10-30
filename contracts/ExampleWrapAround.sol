// SPDX-License-Identifier: MIT

pragma solidity ^0.8.14;


contract ExampleWrapAround {
    
    uint256 public myUint;

    function setMyUint(uint _myUint) public {
        myUint = _myUint;
    }

    function decrementMyUint() public {
        unchecked {
            myUint--;
        }
        
    }

    function incrementMyUint() public {
        myUint++;
    }


}