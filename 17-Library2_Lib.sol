// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Calculator2 {
    function add(int a, int b) public pure returns(int) {
        return a + b;
    }

    function multiply(int a, int b) public pure returns(int) {
        return a * b;
    }
}
