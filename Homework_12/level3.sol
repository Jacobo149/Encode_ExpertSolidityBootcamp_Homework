
// Level 3 - abi.encodePacked

/*
Using the Isolution3 interface write a function that unpacks our data
that was packed using abi.encodePacked(a, b, c).
Where a is type uint16, b is type bool and c is type bytes6.

interface Isolution3 {
    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c);
	}
*/

pragma solidity 0.8.19;

contract level3 {

    function solution(bytes memory packed) external returns (uint16 a, bool b, bytes6 c) {
        assembly {
            a := mload(add(packed, 0x20))
            b := mload(add(packed, 0x22))
            c := mload(add(packed, 0x23))
        }
    }
}