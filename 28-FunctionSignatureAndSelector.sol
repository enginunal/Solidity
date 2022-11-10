// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FuncSigAndSel {
    //gonna use this to show how to calculate selector & signature values
    function deneme(int8 a) public pure returns(int8) { return a; }

    //signature value
    function getSignature() public pure returns(string memory signature) {
        signature = "deneme(int8)";
    }

    //selector calculations
    function getSelector1() public pure returns(bytes4 selector) {
        selector = bytes4(keccak256(bytes(getSignature())));
    }

    function getSelector2() public pure returns(bytes4 selector) {
        selector = this.deneme.selector;
    }

    function getSelector3() public pure returns(bytes4 selector) {
        selector = bytes4(abi.encodeWithSignature(getSignature()));
    }

    //calling parameters
    function getCallParamsSig() public pure returns(bytes memory callParams) {
        callParams = abi.encodeWithSignature(getSignature(), 100); //a=100
    }

    function getCallParamsSel() public pure returns(bytes memory callParams) {
        callParams = abi.encodeWithSelector(getSelector1(), 100); //a=100
    }
}
