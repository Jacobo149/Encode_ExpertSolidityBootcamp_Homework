1. Code is copied from contract code into memory. It is being overwritten from position 0x27 to 0xB6. This will be overwritten with the object field.

2. Yes, If the bytecode being copied is not used or executed within the contract, overwriting it will free up space in the contract's bytecode.

3. No, not directly on the initialization code.  

5. Used to retrieve bytecode of external contract. Needed if you need to analyze or verify the bytecode of an existing contract.  