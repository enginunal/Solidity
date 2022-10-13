// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Parent
{
    function test() virtual public pure returns (int) {
        return 1;
    }
}

contract Child is Parent
{
    function test() override public pure returns (int) {
        return 2;
    }

    function testSuper() public pure returns (int) {
        return super.test();
    }

}

