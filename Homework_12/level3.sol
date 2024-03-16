
// Level 3 - abi.encodePacked
pragma solidity 0.8.19;

/*
Using the Isolution3 interface write a function that unpacks our data
that was packed using abi.encodePacked(a, b, c).
Where a is type uint16, b is type bool and c is type bytes6.

interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
	}
*/