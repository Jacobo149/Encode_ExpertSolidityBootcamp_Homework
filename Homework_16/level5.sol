/*
Using the Isolution5 interface calculate the average of two values int256 a and int256 b.

You will need to write an overflow-free method that will round up the average of (a + b) / 2. Keep in mind that we are rounding up (ceil) and NOT rounding down (floor). Floor = rounding towards zero while Ceil = rounding away from zero see examples on wikipedia

interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}
*/

pragma solidity ^0.8.0;

interface Isolution5 {
    function solution(int256 a, int256 b) external pure returns (int256);
}

contract SolutionContract is Isolution5 {
    function solution(int256 a, int256 b) external pure override returns (int256) {
        int256 sum;

        // Check for potential overflow
        if ((b > 0 && a > type(int256).max - b) || (b < 0 && a < type(int256).min - b)) {
            revert("Addition overflow");
        } else {
            sum = a + b; // Perform addition
        }

        int256 average;

        // Check if the sum is odd
        if (sum % 2 == 0) {
            average = sum / 2; // If even, no need to adjust
        } else {
            // If odd, add 1 to the average
            average = (sum / 2) + (sum < 0 ? 1 : 0); // Adjust for negative numbers
        }

        return average;
    }
}

