pragma solidity ^0.8.9;

contract MyContract {
  int  i  = 10 ; // integer: all values from positive to negative (ex: -20 or 20), by default 0
  string str =  "welcome to idealabs."; // string:  any paragraph ,statemnet  or character, by default empty.  
  address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; // address: address of individual account holde  or  contract , by default 0x000000000000000000000 
  bool b = true  ; // only true or  false ; by default false.  
  bytes32 by = "hello world " ; // any string of size 32 bytes. by default empty    
  uint ui; // uint: unsigned integer only posiovite value (ex: 50 )

  function MyValues()  view public returns (int,string memory,address,bool,bytes32,uint) {
    
    
    return (i,str,addr,b,by,ui);
  }
}
