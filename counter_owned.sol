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

    function inc() public {
        require(_owner == msg.sender, "Only the owner can increment the counter");
        counter++;
    }

    function dec() public {
        require(_owner == msg.sender, "Only the owner can decrement the counter");
        counter--;
    }
}