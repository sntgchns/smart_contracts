pragma solidity ^0.8.6;

contract OwnedCounter {

    int public counter;
    address private _owner;

    constructor() {
        _owner = msg.sender;
        counter = 0;
    }

    function get() public view returns (int) {
        return counter;
    }

    modifier onlyOwner() {
        require(_owner == msg.sender, "Only the owner can modify the counter");
        _;
    }

    function inc() public onlyOwner {
        counter++;
        if (counter == 12)
            revert("Counter reached 11");
    }

    function dec() public onlyOwner {
        counter--;
        if (counter == -12)
            revert("Counter reached -11");
    }
}