Checklist from https://gist.github.com/shayanb/cd495e23c7cf1a8b269f8ce7fd198538

## Allowance
- Not able to double spend in this contract

## decimals()
- The virtual/override keywords allow derived contracts to override the function. Thus it is possible when override occurs to return something other than 18. 

## Reentrance Attack
- Does not use checks-effects-interactions pattern. Thus reentrance is possible.

## Unprotected transferFrom()
- It is public, therefore anyone can call it, thus unprotected.
- Further open to reentrance attacks.

## DoS with unexpected revert
- Not vulnerable to DoS

## External Calls
- The contract has no external calls


## Transfers
- Not possible to return false instead of revert

## Missing Return Values
- Multiple functions missing return values

## BalanceOf()
- Override keyword, therefore a derived contract can manipulate the function.

## Blacklistable
- No blacklisted addresses

## Mintable/Burnable
- Can only be internally called, therefore only called by the contract or derived contracts.

## Pauseable
- Contract functions are not pauseable

## Take fees from transfers
- Deflationary
- No accounting errors on burn function.
