// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
uint private counter;

function increment() public {
    counter++;
}

function decrement() public {
    counter--;
}
function getcount() public view returns(uint){
    return counter;
}
}