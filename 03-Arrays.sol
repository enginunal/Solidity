// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ArraysSample {
  uint8[] public arrEkleCikar;

  //one dim
  int[3] public arrStatic;
  int[] public arrDynamic;
  bytes public byteArr;
  //two dim
  uint8[2][3] public arrStatic2Dim;   
  uint8[][] public arrDynamic2Dim;   
  bytes[] public byteArr2Dim;
    
  constructor() {   
    arrEkleCikar.push(10);
    arrEkleCikar.push(20);
    arrEkleCikar.pop();

    //one dim test
    arrStatic[0] = 1;
    arrDynamic =  new int[](3);
    arrDynamic[2] = 2;
    byteArr = "abc";

    //two dim test
    arrStatic2Dim = [[1,2],[3,4],[5,6]];
    arrDynamic2Dim = new uint8[2][](3);
    arrDynamic2Dim[2][1] = 9;
    byteArr2Dim = new bytes[](3);
    byteArr2Dim[1] = "deneme";
  }

  uint[] a = new uint[](7);
  uint[7] b;
  uint[2][3] c = [[1,2],[3,4],[5,6]];
}
