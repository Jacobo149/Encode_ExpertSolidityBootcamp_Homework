
// Level 1 - Matrix Addition

/*
Write a function that adds two matrices returns the result.
To keep things simple the array sizes will be fixed sizes of 2x3 (uint256[2][3]).
Take a look at Wikipedia if you need help understanding matrix addition.
Your solution should implement the following interface:

interface Isolution1 {
    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (
        uint256[2][3] memory
    );
}

*/

pragma solidity 0.8.19;

contract level1 {

    function solution(
        uint256[2][3] calldata x, 
        uint256[2][3] calldata y
    ) external pure returns (
        uint256[2][3] memory
    ) {
        uint256[2][3] memory result;
        for (uint i = 0; i < 2; i++) {
            for (uint j = 0; j < 3; j++) {
                result[i][j] = x[i][j] + y[i][j];
            }
        }
        return result;
    }
}