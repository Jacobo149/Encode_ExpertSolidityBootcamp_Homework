pragma solidity 0.8.19;

contract hw3 {
    uint256 s;

    function memvar(uint256 a) external {
        uint256[1] memory b;
        b = [a];
        s = b[0];
    }
    
}