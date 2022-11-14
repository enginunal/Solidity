// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A {
    int8 public s_val;

    function deneme(int8 a) public returns(int8) { 
        s_val = a;
        return a; 
    }

    function deneme2(int8 a) public view returns(int8) { 
         return s_val + a; 
    }
}

contract CallAFunctions {
    int8 public s_val;
    address public s_addr;
    
    constructor(address _addr) {
        s_addr = _addr;
    }

    function denemeCall(int8 _newVal) public returns(int8) {
        (bool success, bytes memory result) = s_addr.call(abi.encodeWithSignature("deneme(int8)", _newVal));
        require(success, "call failed");
        int8 a = abi.decode(result, (int8));
        return a;
    }

    function denemeDelegatecall(int8 _newVal) public returns(int8) {
        (bool success, bytes memory result) = s_addr.delegatecall(abi.encodeWithSignature("deneme(int8)", _newVal));
        require(success, "call failed");
        int8 a = abi.decode(result, (int8));
        return a;
    }

    function denemeStaticcall(int8 _newVal) public view returns(int8) {
        (bool success, bytes memory result) = s_addr.staticcall(abi.encodeWithSignature("deneme2(int8)", _newVal));
        require(success, "call failed");
        int8 a = abi.decode(result, (int8));
        return a;
    }
}
