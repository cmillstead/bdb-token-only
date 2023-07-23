// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Token {
	string public name;
	string public symbol;
	uint public decimals = 18;
	uint public totalSupply; // 1 million x 10^18
	
	constructor(
		string memory _name, 
		string memory _symbol, 
		uint _decimals, 
		uint _totalSupply
	) {
		name = _name;
		symbol = _symbol;
		decimals = _decimals;
		totalSupply = _totalSupply * (10**decimals);
	}	 
}
