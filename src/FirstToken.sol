// SPDX-License-Identifier: UNLICENSED
// Specific solidity version was causing a compile time error.

pragma solidity ^0.8.13;

contract FirstToken {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
