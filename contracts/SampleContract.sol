// SPDX-License-Identifier: MIT


pragma solidity ^0.8.14;

contract SampleContract {
    string public myString;

    function updateMyString(string memory _newMyString) public payable {
        if (msg.value == 1 ether) {
            myString = _newMyString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
    }
}