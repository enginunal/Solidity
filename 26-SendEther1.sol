// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0.0;

contract SendEther1 {
    event SendLog(address, uint, bool);

    constructor() payable {}
    receive() external payable {}
    
    function transferTest(address payable _to, uint256 _amount) external {
        _to.transfer(_amount);
        emit SendLog(_to, _amount, true);
    }

    function sendTest(address payable _to, uint256 _amount) external {
        bool ok = _to.send(_amount);        
        emit SendLog(_to, _amount, ok);
    }

    function callTest(address payable _to, uint256 _amount) external {
        (bool ok,) = _to.call{value: _amount}("");
        emit SendLog(_to, _amount, ok);
    }
}

contract GetEther1 {
    uint256 val;
    event LogIt(address, uint, uint);

    receive() external payable {
        uint8 i = 1;
        uint8 j = 2;
        i += j;        
        //val++;        
        emit LogIt(msg.sender, msg.value, gasleft());        
    }
}
