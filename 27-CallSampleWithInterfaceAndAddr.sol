// SPDX-License-Identifier: MIT
pragma solidity >=0.8.7;

interface IHelloFunc {
    function Hi() external returns (string memory);
}

interface ICalculateFunc {
    function Calculate(uint a, uint b) external returns (uint);
}

contract A is IHelloFunc, ICalculateFunc  {
    function Hi() public pure override returns(string memory) {
        return "Hi from contract A";
    }

    function Calculate(uint a, uint b) public pure override returns(uint) {
        return a + b;
    }

}

contract B {
    string public val;

    function callContractA(address _contractA) public {
        IHelloFunc a = IHelloFunc(_contractA);
        val = a.Hi();
    }
}
