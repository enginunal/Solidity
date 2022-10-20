// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

contract StorageAndMemoryTest {
    struct User {
      uint256 id;
      string name;
    }

    User public user1; //storage

  function AssignTest1() public {    
    user1.id = 1;
    user1.name = "engin";
  }

  function AssignTest2() public {        
    User memory user2; //memory
    user2.id = 2;
    user2.name = "unal";
  } 

  function AssignTest3() public {            
    User storage user3 = user1; //storage ref
    user3.id = 3;
    user3.name = "abc";
  } 

  function AssignTest4() public {            
    User memory user4 = user1; //memory copy
    user4.id = 2;
    user4.name = "unal";
  } 

}
