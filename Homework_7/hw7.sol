pragma solidity 0.8.19;

contract homework7 {

    event TransferOccurred(address indexed _to, uint256 _amount);


    function query(uint _amount, address _receiver, function (address, uint256) external returns (bool) X) public {
        require(X(msg.sender, _amount), "ERC20 transfer failed");
        // Continue with the rest of the function logic...
        }


    function checkCall(bytes calldata data) external {
        bytes4 selector = abi.decode(data[:4], (bytes4));

        if (selector == bytes4(keccak256("transfer(address,uint256)"))) {
            require(data.length == 36, "Invalid data length for transfer function");

            address to = abi.decode(data[4:36], (address));
            uint256 amount = abi.decode(data[36:], (uint256));

            emit TransferOccurred(to, amount);
        } else {
            revert("Not an ERC20 transfer function");
        }
    }
}