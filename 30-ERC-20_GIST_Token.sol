//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract GIST_Token {
    mapping(address => uint256) private s_balances;
    mapping(address => mapping(address => uint256)) private s_allowances;
    uint256 private s_totalSupply;
    string private s_name;
    string private s_symbol;

    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);

    constructor() {
        s_name = "Guzel Istanbul Token";
        s_symbol = "GIST";
        s_totalSupply = 100;
        s_balances[msg.sender] = s_totalSupply;
    }

    function name() public view returns (string memory) {return s_name;}

    function symbol() public view returns (string memory) {return s_symbol;}

    function totalSupply() public view  returns (uint256) {return s_totalSupply;}

    function balanceOf(address _owner) public view returns (uint256) {return s_balances[_owner];}

    function transfer(address _to, uint256 _value) public returns (bool) {
        uint256 fromBalance = s_balances[msg.sender];
        require(fromBalance >= _value, "ERC20: transfer amount exceeds balance");

        s_balances[msg.sender] = fromBalance - _value;
        s_balances[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        uint256 currentAllowance = allowance(_from, msg.sender);
        require(currentAllowance >= _value, "ERC20: insufficient allowance");
        
        approve(_from, currentAllowance - _value);
        transfer(_to, _value);

        return true;
    }

    function approve(address _spender, uint256 _value) public returns (bool) {
        s_allowances[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return s_allowances[_owner][_spender];
    }

}
