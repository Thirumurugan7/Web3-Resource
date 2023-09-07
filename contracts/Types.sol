// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Start{
    uint256 public store;
    int public negative=-7;
    bool public passed=true;
    string public name="there";

    function storing() public {
        store= store+1;
    }

    function read() public view returns (uint){
        return store;
    
    }

    function getInput(int param) public {
        negative = param;
        
         
    }
}