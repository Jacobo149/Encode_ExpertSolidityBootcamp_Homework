/*
Bit Operations
Imagine you have a uint256 variable in
storage named x
check if x starts with de  or be
if x starts with 0xde  multiply x by 4
if x starts with 0xbe  divide x by 4
Write the code in
a. Solidity
b. Yul
*/

pragma solidity 0.8.19;

pragma solidity ^0.8.0;

contract BitOperations {
    uint256 public x; // Assume x is a state variable in storage

    function manipulateX() external {
        bytes32 xBytes = bytes32(x);
        bytes2 prefix = bytes2(xBytes);

        if (prefix == 0xde00) {
            x *= 4;
        } else if (prefix == 0xbe00) {
            x /= 4;
        }
    }
}


pragma solidity >=0.8.0;

contract BitOperations {
    function manipulateX() external {
        let x := sload(0x00) // Load x from storage, assuming x is at storage slot 0
        let prefix := shr(240, x) // Extract the first two bytes from x

        if eq(prefix, 0xde) {
            x := mul(x, 4) // Multiply x by 4 if it starts with 0xde
        } else {
            if eq(prefix, 0xbe) {
                x := div(x, 4) // Divide x by 4 if it starts with 0xbe
            }
        }

        sstore(0x00, x) // Store the modified x back to storage
    }
}

