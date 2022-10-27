// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract ModifierDemo3 {
    uint public amount;
    bool public locked;
    
    modifier transactionControl(uint _val) {
        require(!locked, "please wait, (in use)");
        require(_val > 0 && _val <= 10, "out of range, (range:1-10)");
        //lock before processData function execution
        locked = true;
        _;
        //release lock after processData function
        locked = false;
    }

    function processData(uint _val) public transactionControl(_val) {
        //locked, (forex:protection against reentrancy attacks)
        amount += _val;
    }
        
}
