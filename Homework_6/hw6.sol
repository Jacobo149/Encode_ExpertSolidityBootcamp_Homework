// SPDX-License-Identifier: MIT 
pragma solidity 0.8.17;


contract homework6 {

    function returnEth() external pure returns (uint256) {
        // This function returns the amount of ether sent to it in assembly
        uint256 ethAmount;
        assembly {
            // Get the size of the input data (msg.data)
            let size := calldatasize()
            // Move the data pointer to the beginning of the input data
            let ptr := 0
            // Skip the first 4 bytes of the input data, which contain the function selector
            ptr := add(ptr, 4)
            // Read 32 bytes of data from the input data, starting from the current pointer position
            ethAmount := calldataload(ptr)
        }
        return ethAmount;
    }
}