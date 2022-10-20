// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.12;
 
 contract CallDataSample {

  function CalldataSample1(string calldata strCallData) external pure returns(string memory){        
    string memory newData;
    newData = string.concat(strCallData, " CalldataSample1");
    newData = string.concat(newData, CalldataSample2(strCallData));
    newData = string.concat(newData, CalldataSample3(strCallData));
    return newData;
  }

  function CalldataSample2(string calldata strCallData) public pure returns(string memory){    
    return string.concat(" - ", strCallData, " CalldataSample2");
  }

  function CalldataSample3(string memory strMemData) public pure returns(string memory){    
    strMemData = string.concat(" - ", strMemData);
    return string.concat(strMemData, " CalldataSample3");    
  }
   
}
