// SPDX-License-Identifier: MIT


pragma solidity ^0.8.14;

contract SendWithdrawMoneyExample {

    uint public balanceReceived;

    function deposit() public payable {
        balanceReceived += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdrawAll() public payable {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawToAddress(address payable to) public payable {
        to.transfer(getContractBalance());
    }

}