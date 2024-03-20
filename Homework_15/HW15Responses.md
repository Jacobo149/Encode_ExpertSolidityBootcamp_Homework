1. Numbers are stored in twos complement. Where the MSB is the sign bit. For negative numbers, this bit will always be 1, and positive 0.

2. Solidity division is more gas efficient. This is because Solidity operations are tailored for the EVM. Assembly operations provide more flexibility, but often require more gas due to the low level nature.