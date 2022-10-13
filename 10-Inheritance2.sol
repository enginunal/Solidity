// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent1 {
    int public year;

    constructor(int _year) {
        year = _year;
    }

    function setYear(int _year) public {
        year = _year;
    }
}

contract Parent2 {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

}

contract Child is Parent1(2022), Parent2("istanbul") {
    
}

contract Child2 is Parent1, Parent2 {
    constructor(int _year, string memory _name) Parent1(_year) Parent2(_name) {
        
    }
}
