// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Calculator1 {
    function add(int a, int b) public pure returns(int) {
        return a + b;
    }

    function multiply(int a, int b) public pure returns(int) {
        return a * b;
    }
}

contract CalculateData1 {
    int public result;
    
    function processNumbers(int x, int y) public {
        int res;
        res = Calculator1.add(x, y);
        res += Calculator1.multiply(x, y); 
        result = res;
    }
}
