pragma solidity ^0.4.19;

contract MyContract {
 

  function rand(uint min, uint max) constant public returns (uint) {
    return uint(block.blockhash(block.number-1))%(min+max)-min;
  }
}
