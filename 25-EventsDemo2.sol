// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0.0;

contract EventsDemo2 {        
    struct BankAccount {
        address owner;
        string name;
        uint256 amount;
    }

    BankAccount[] public accounts;

    event AccountCreated(BankAccount indexed newAccount, uint256 indexed totalAccounts);

    function createAccount(string memory _name, uint256 _initialAmount) public {
        BankAccount memory newAccount = BankAccount({
            owner:msg.sender, 
            name:_name, 
            amount:_initialAmount 
            });
        accounts.push(newAccount);
        emit AccountCreated(newAccount, accounts.length);

    }
}
