// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateVisibility {
    int public number;
    bytes32 internal name;
    bool private pass;

    function setPass(bool newValue) public  {
        pass = newValue;
    }

    function getPass() public view returns (bool)  {
        return pass;
    }

    function setName(bytes32 newValue) public  {
        name = newValue;
    }

    function getName() public view returns (bytes32)  {
        return name;
    }

    function setNumber(int newValue) public  {
        number = newValue;
    }

}
