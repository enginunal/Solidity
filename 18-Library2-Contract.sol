// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/16-Library2_Lib.sol";

contract CalculateData2 {
    int public result;
    
    function processNumbers(int x, int y) public {
        int res;
        res = Calculator2.add(x, y);
        res += Calculator2.multiply(x, y); 
        result = res;
    }
}
