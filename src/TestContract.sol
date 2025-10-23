// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestContract {

    uint256 public tokenAmount = 100;

    function spendTokens(uint256 amount) public {
        tokenAmount = tokenAmount - amount;
    }

    function checkMaxUint() public pure returns (uint256) {
        return type(uint256).max;
    }
}
