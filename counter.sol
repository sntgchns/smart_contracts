pragma solidity ^0.8.6;

contract Counter {

    int public counter;

    function get() public view returns (int) {
        return counter;
    }

    function inc() public {
        counter++;
    }

    function dec() public {
        counter--;
    }
}