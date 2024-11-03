// SPDX-License-Identifier: MIT


pragma solidity ^0.8.14;

contract TheBlockchainMessenger {
    address public owner;

    uint public changeCounter;

    string public message;

    constructor() {
        owner = msg.sender;
    }

    function setMessage(string memory _message) public {
        if (owner == msg.sender) {
            message = _message;
            changeCounter++;
        }
    }
}