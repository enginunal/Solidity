// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ModifierDemo2 {
    int public val;
    
    modifier rangeControl(int _val) {
        require(_val > 0 && _val <= 10, "out of range 1-10");
        _;
    }

    function setVal(int _val) public rangeControl(_val) {
        val = _val;
    }
        
}
