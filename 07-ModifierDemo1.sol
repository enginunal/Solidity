// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierDemo {
    address payable owner;
    
    constructor() { owner = payable(msg.sender); }    
    receive() external payable {}

    modifier onlyOwner {
        require(msg.sender == owner, "only owner can call..");
        _;
    }

    function withdraw(uint withdrawAmount) public onlyOwner {
        payable(msg.sender).transfer(withdrawAmount);
    }
        
}
