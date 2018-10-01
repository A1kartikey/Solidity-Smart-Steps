pragma solidity ^0.4.4;

contract MyContract {
  int i; // 0
  string str; // ""
  address addr; // 0x0000000000000000000000000000000000000000
  bool b; // false
  byte by;
  uint ui;

  function MyValues()  constant public returns (int,string,address,bool,byte,uint) {
    
    
    return (i,str,addr,b,by,ui);
  }
}
