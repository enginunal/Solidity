// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Calculator {
    function add(int a, int b) internal pure returns(int) {
        return a + b;
    }

    function multiply(int a, int b) internal pure returns(int) {
        return a * b;
    }
}

contract CalculateData {
    int public result;
    
    function processNumbers(int x, int y) public {
        int res;
        res = Calculator.add(x, y);
        res += Calculator.multiply(x, y); 
        result = res;
    }
}
