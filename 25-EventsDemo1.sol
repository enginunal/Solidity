// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0.0;

contract EventsDemo1 {
    uint public amount;
    
    event AmountChanged(uint indexed oldAmount, uint indexed newAmount);

    function changeAmount(uint newAmount) public {
        uint oldAmout = amount;
        amount = newAmount;

        emit AmountChanged(oldAmout, newAmount);        
    }
}
