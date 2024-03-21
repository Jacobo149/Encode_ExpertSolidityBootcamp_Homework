/*
Using the Isolution4 interface write a function that takes a uint256 value and returns the greatest power of 2, (2 ^ n) that is less than or equal to the input value. The input value is a number between 2^0 and 2^256 -1

// stdin: 1                     stdout: 1 or 2**0
// stdin: 10                    stdout: 8 or 2**3
// stdin: 21                    stdout: 16 or 2**4
// stdin: 2048                  stdout: 2048 or 2**11
// stdin: 9223372036854775808   stdout: 9223372036854775808 or 2**63
// stdin: 0xffffffff            stdout: 2147483648 or 0x80000000 or 2**31
interface Isolution {
    function solution(uint256 number) external pure returns (uint256);
}
*/

pragma solidity ^0.8.0;

interface Isolution {
    function solution(uint256 number) external pure returns (uint256);
}

contract SolutionContract is Isolution {
    function solution(uint256 number) external pure override returns (uint256) {
        if (number == 0) return 0; // Special case for 0 input
        uint256 result = 1;
        uint256 bit = type(uint256).max >> 1; // Initialize bit to the highest bit

        while (bit > number) {
            bit >>= 1; // Right shift bit by one
        }

        while (bit != 0) {
            if (number >= bit) {
                return result * bit; // Return result multiplied by the highest bit found
            }
            result <<= 1; // Left shift result by one
            bit >>= 1; // Right shift bit by one
        }
        return result;
    }
}

