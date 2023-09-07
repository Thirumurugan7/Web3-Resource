// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DBank{
mapping (address => uint) private balance;
event deposited (address depositer, uint amount);
event withdrawal (address withdraw, uint amount);
event tranfered (address from, address to, uint amount);
    function deposit() public  payable {
       require(msg.value > 0 , "insufficient funds");
        balance[msg.sender] += msg.value; 
        emit deposited(msg.sender, msg.value);
    }

    function getBalance() public  view returns (uint){
return balance[msg.sender];
    }

    function withdraw(uint amount) external {
        require(amount > 0 , "zero withdrawal is not possible");
        require(amount <= balance[msg.sender], "insufficient amount");
        balance[msg.sender]-= amount;
        payable(msg.sender).transfer(amount);
        emit withdrawal(msg.sender, amount);
    }

    function transferTo (address _to, uint amount) external  {
        require(amount <= balance[msg.sender], "insufficient funds");
        require(_to != address(0) , "not valif address");
        balance[msg.sender]-= amount;
        balance[_to]+= amount;
        payable(_to).transfer(amount);
emit tranfered(msg.sender, _to, amount);

    }
}