//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Mappings {
    mapping(address => uint) balance;

    function setB(address account, uint amount) public {
        balance[account] = amount;
    }

    function getB(address account) public view returns(uint) {
        return balance[account];
    }    
}
