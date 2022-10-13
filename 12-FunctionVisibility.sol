// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionVisibility {
    int public val;

    function privateFunc(int newVal) private  {
        val = newVal;
    }

    function internalFunc(int newVal) internal {
        privateFunc(newVal);
    }

    function publicFunc(int newVal) public {        
        internalFunc(newVal);       
        //this.externalFunc(newVal);
    }

    function externalFunc(int newVal) external {
        internalFunc(newVal);
    }
}
