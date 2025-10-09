// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract VulnerableWallet {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function transfer(address payable to, uint256 amount) public {
        require(tx.origin == owner, "Not owner");
        to.transfer(amount);
    }

    receive() external payable {}
}
