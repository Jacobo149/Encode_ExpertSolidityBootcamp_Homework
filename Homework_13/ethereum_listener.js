// Script to listen to ethereum pending transactions using Infura

const { ethers } = require('ethers');

async function main() {
    // Connect to Infura
    const provider = new ethers.providers.InfuraProvider('mainnet', '<your_infura_project_id>');

    // Listen to pending transactions
    provider.on('pending', (txHash) => {
        console.log('New pending transaction:', txHash);
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
