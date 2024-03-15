## DogCoinGame.sol Audit
- In addplayer, make the value check a require statement. That way it reverts if not true. With current setup, it still adds to the player count if less than 1 ETH is supplied.
- In add winner, should probably pass an array of winners or other method to avoid having to call the function 100 times. Will save lots of gas this way.
- addWinner should not be payable or public unless there are checks in place (require, assert)
- In the payout function dividing incorrectly. Should divide the balance by the number of entrants.
- Only distributing max 100 ETH to winners, which is what they spent. Do they not get a profit? If there are 200 players, shouldn't there be 200ETH? Therefore the payout check will never pass?
- payWinners should not be a public function.

## BrokenSea.sol Audit
- Line 90, the XOR of the addresses, might not be completely free of collisions.
- There is no access control for users who are able to accept bids.