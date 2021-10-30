pragma solidity ^0.8.9;

contract creatorBalanceChecker {

    address creator;
    uint creatorbalance; 		// TIP: uint is an alias for uint256. Ditto int and int256.

    constructor()
    {
        creator = msg.sender; 								 // msg.sender is current address
        creatorbalance = creator.balance;
    }

	function getContractAddress() view public returns (address) 
	{
		return  address(this);
	}

	function getCreatorBalance() view public returns (uint)     // Will return the creator's balance AT THE TIME THIS CONTRACT WAS CREATED
	{
        return creatorbalance;
    }
    
    function getCreatorDotBalance() view public returns (uint)  // Will return creator's balance NOW
    {
        return creator.balance;
    }
    
    /**********
     Standard kill() function to recover funds 
     **********/
    
    function selfDestruct() public
    { 
        if (msg.sender == creator)
            selfdestruct (payable(creator));  // kills this contract and sends remaining funds back to creator
    }
        
}
