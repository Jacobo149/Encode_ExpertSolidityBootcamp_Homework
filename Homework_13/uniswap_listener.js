// Script to listen to Uniswap transactions using Infura

const { ethers } = require('ethers');

async function main() {
    // Connect to Infura
    const provider = new ethers.providers.InfuraProvider('mainnet', '<your_infura_project_id>');

    // Uniswap contract address
    const uniswapRouterAddress = '0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D'; // Replace with the correct Uniswap Router address for the network

    // Create an interface for the Uniswap Router contract
    const uniswapRouterInterface = new ethers.utils.Interface([
        // Add function signatures for the functions you're interested in
        'function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline) external payable returns (uint[] memory amounts)',
        'function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline) external returns (uint[] memory amounts)',
        // Add more function signatures as needed
    ]);

    // Listen to pending transactions
    provider.on('pending', async (txHash) => {
        const tx = await provider.getTransaction(txHash);
        if (tx) {
            // Check if the transaction is to the Uniswap Router contract
            if (tx.to.toLowerCase() === uniswapRouterAddress.toLowerCase()) {
                const parsedTx = uniswapRouterInterface.parseTransaction(tx.data);
                if (parsedTx) {
                    console.log('New Uniswap transaction:', txHash);
                    console.log('Function:', parsedTx.name);
                    console.log('Params:', parsedTx.args);
                    console.log('----------------------------------');
                }
            }
        }
    });

    // Handle errors
    provider.on('error', (error) => {
        console.error('Provider error:', error);
    });

    // Clean up when done
    process.on('SIGINT', () => {
        provider.removeAllListeners(); // Remove all listeners
        process.exit();
    });
}

main().catch((error) => {
    console.error('Error:', error);
    process.exit(1);
});
