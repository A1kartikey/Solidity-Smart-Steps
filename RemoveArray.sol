
pragma solidity ^0.4.19;

contract MyContract {
  uint[] public array = [1,2,3];

  function removeAtIndex(uint index) constant public returns (uint[]) {
    if (index >= array.length) return;

    for (uint i = index; i < array.length-1; i++) {
      array[i] = array[i+1];
    }

    delete array[array.length-1];
    array.length--;

    return array;
  }
}
