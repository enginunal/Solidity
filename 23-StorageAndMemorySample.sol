//SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

contract MemSample {
    struct MyStruct {
        int  st_X;
        bool st_Y;
    }
    
    uint256               s_a;  //storage 
    string                s_b;  //storage 
    uint256[2]            s_c;  //storage 
    MyStruct              s_d;  //storage
    mapping(uint => uint) s_e;  //storage
    string                s_f;  //storage

    function Sample() public pure {
        uint256              m_a;  //memory
        string        memory m_b;  //memory
        uint256[2]    memory m_c;  //memory
        MyStruct      memory m_d;  //memory
        //mapping tanımı memory olarak yapılamaz! Sadece storage tanımlanır.
        string        memory m_f;  //memory
    }
}
