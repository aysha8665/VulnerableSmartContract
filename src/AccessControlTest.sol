pragma solidity ^0.8.0;

contract AccessControlTest {

    address public manager;

    constructor() {
        manager = msg.sender;
    }

    function setNewManager(address _newManager) public {
        // This check is the point of failure
        require(tx.origin == manager, "AUTH_FAIL");
        manager = _newManager;
    }

    function dummyAction(uint256 amount) public view returns(uint256) {
        return amount * 2;
    }
}
