// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ReceiveAndFallbackFunction {
    uint public fallbackCallCounter;
    uint public receiveCallCounter;

    receive() external payable {
        receiveCallCounter++;
    }

    fallback() external payable {
        fallbackCallCounter += 2;
    }
}
