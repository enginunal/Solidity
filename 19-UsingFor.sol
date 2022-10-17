// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Calculator {
  function add(int a, int b) public pure returns(int) {
      return a + b;
  } 
    
  function multiply(int a, int b) public pure returns(int) {
      return a * b; 
  }
}

contract CalculateData {
    using Calculator for int;
    int public result;

    function processNumbers(int x, int y) public {
        //result = x.add(y);
        result = x.multiply(y);
    }
}
