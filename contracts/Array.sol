// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Basics{
    mapping (string => uint) public list;
uint[5] public rollno;
function StoreList(string memory _name, uint _age) public {
    list[_name]=_age;
}

function storeRollno ( uint _no) public {
    rollno[0] = _no;
}


}