module addAndStore {
    // Define the function to add two numbers and store the result
    function addAndStore() -> result {
        // Step 1: Add 0x07 to 0x08
        result := add(0x07, 0x08);

        // Step 2: Store the result at the next free memory location
        mstore(0x00, result);
    }
}

// Opcode Equivalent:

/*
PUSH1 0x07
PUSH1 0x08
ADD
PUSH1 0x00
MSTORE
*/