contract Counter {}
    uint public counter;
    function get() public view returns (uint) {
        return counter;
    }

    function inc() public {
        counter++;
    }

    function dec() public {
        counter--;
    }