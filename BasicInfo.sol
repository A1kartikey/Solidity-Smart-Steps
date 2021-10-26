pragma solidity ^0.8.9;

contract basicInfoGetter {

    address creator;

    constructor() 
    {
        creator = msg.sender; 								    
    }
	
	function getCurrentMinerAddress() view public returns (address) // get CURRENT block miner's address, 
	{														     // not necessarily the address of the miner when this block was born
		return block.coinbase;
	}
	
	function getCurrentDifficulty() view public returns (uint)
	{
		return block.difficulty;
	}
	
	function getCurrentGaslimit() view public returns (uint)  // the most gas that can be spent on any given transaction right now
	{													  
		return block.gaslimit;
	}
	
	function getCurrentBlockNumber() view public returns (uint)
	{
		return block.number;
	}
    
    function getBlockTimestamp() view public returns (uint) // returns current block timestamp in SECONDS (not ms) from epoch
    {													
    	return block.timestamp; 						 // also "now" == "block.timestamp", as in "return now;"
    }
    
    function getMsgData() view public returns (bytes memory) 		// The data of a call to this function. Always returns "0xc8e7ca2e" for me.
    {										            // adding an input parameter would probably change it with each diff call?
    	return msg.data;
    }
    
    function getMsgSender() view public returns (address)  // Returns the address of whomever made this call
    {													// (i.e. not necessarily the creator of the contract)
    	return msg.sender;
    }
    
    function getMsgValue()  public payable returns (uint)		// returns amt of wei sent with this call
    {
    	return msg.value;
    }
    
    
    
    function getMsgGas() view public returns (uint)        
    {													
    	return gasleft();
    }
    
	function getTxGasprice() view public returns (uint) 	// "gasprice" is the amount of gas the sender was *willing* to pay. 50000000 for me. (geth default)
    {											     	
    	return tx.gasprice;
    }
    
    function getTxOrigin() view public returns (address) 	// returns sender of the transaction
    {											   		// What if there is a chain of calls? I think it returns the first sender, whoever provided the gas.
    	return tx.origin;
    }
    
	function getContractAddress() view public returns (address) 
	{
		return address(this);
	}
    
    function getContractBalance() view public returns (uint) 
    {
    	return address(this).balance;
    }
    
}
