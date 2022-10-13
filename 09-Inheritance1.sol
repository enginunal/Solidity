// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent {
    int val;

    function getVal() public view returns(int) {
        return val;
    }

    function setVal(int _val) public {
        val = _val;
    }
}

contract Child is Parent {
    
}
