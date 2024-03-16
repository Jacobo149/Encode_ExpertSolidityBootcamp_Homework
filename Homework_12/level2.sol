
// Level 2 - Sorting an Array

/*
Write a function that sorts an array in ascending order and returns the result.
The array will be a fixed of 10 but the contents random.
Your solution should implement the following interface:

  interface Isolution2 {
  function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray);
}
*/

pragma solidity 0.8.19;

contract level2 {

  function solution(uint256[10] calldata unsortedArray) external returns (uint256[10] memory sortedArray) {
      uint256[10] memory result = unsortedArray;
      for (uint i = 0; i < 10; i++) {
        for (uint j = i + 1; j < 10; j++) {
          if (result[i] > result[j]) {
              uint256 temp = result[i];
              result[i] = result[j];
              result[j] = temp;
          }
        }
      }
        return result;
    }
}