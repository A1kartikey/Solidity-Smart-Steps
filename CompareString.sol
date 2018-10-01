pragma solidity ^0.4.19;

contract MyContract {
  function compare(string s1, string s2) public constant returns (bool) {
    return (sha3(s1) == sha3(s2));
  }
}
