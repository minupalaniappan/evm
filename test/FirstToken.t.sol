// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/FirstToken.sol";

contract FirstTokenTest is Test {
    FirstToken public firstToken;

    function setUp() public {
        firstToken = new FirstToken();
        firstToken.setNumber(0);
    }

    function testIncrement() public {
        firstToken.increment();
        assertEq(firstToken.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        firstToken.setNumber(x);
        assertEq(firstToken.number(), x);
    }
}
