pragma solidity ^0.8.4;

contract Scope {
    uint256 public count = 10;

    function increment(uint256 num) public {
        // Modify state of the count variable from within
        // the assembly segment
        assembly {
            // Define the storage slot of the count variable
            let slot := sload(0)
            // Increment the value by num
            let newValue := add(slot, num)
            // Store the new value back to the storage slot
            sstore(0, newValue)

        }
    }
}
