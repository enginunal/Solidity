// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Start {
    uint256 storedNumber;

    function setNumber(uint256 newNumber) public {
        storedNumber = newNumber;
    }

    function getNumber() public view returns(uint256) {
        return storedNumber;
    }

}