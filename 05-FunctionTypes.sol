// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FunctionTypes {
    int public val1;
        
    function viewTest() public view returns (int) {
        return val1;
    }

    function pureTest(int a, int b) public pure returns (int) {
        return a + b;
    }
    
    function payableTest() external payable {
    }
    
    function getBalance() public view  returns (uint) {
        return address(this).balance;
    }

}
