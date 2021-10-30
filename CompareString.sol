pragma experimental ABIEncoderV2;//This is Experimental features.Can not be used in production cases.
pragma solidity ^0.8.9;

contract stringComparision {
    
    string[] public names; //dynamic array of string 
    
 modifier checkNames (string memory _name){ // modifier to check existing name in array. 
        
        for(uint i = 0 ; i < names.length; i++){
            
            require (keccak256(abi.encodePacked(names[i])) != keccak256(abi.encodePacked(_name))); 
                  // keccak256 computes the hash of the input.
             }
             
        _; // go to the next line.
    }
 function setNames(string memory _name) public checkNames(_name){
        
        names.push(_name);
    }
}
