pragma solidity 0.8.17;

contract hw2 {
    uint8[] public array = [1, 2, 3, 4, 5];

    function remove(uint index) public {
        array[index] = array[array.length - 1];
        array.pop();
    }
}