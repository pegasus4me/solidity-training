// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Bank {
   
    address payable owner;

    constructor(){
        owner = payable(msg.sender);
    }

    mapping (address => uint) userBalance;
    
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    modifier checkBalance {
        require(userBalance[msg.sender] >= msg.value , "not enought money");
        
        _;
    }

    function sendMoney(address payable _to, uint _amount) external payable checkBalance {
        // sender need to have eth in their wallet
        // send money to address specified and decrement valued send from this address 
        _to.transfer(_amount);
        userBalance[address(this)] -= _amount;
        
    }

    function tipCreator(uint64 _amount) external payable checkBalance {
        // tip contract creator if you like his content
        owner.transfer(_amount);
        userBalance[address(this)] -= _amount;
    }

    function withdrawAllMoney(address payable _to) external payable onlyOwner checkBalance {
        // contract owner can withdraw all balance to another one if he wants 
        _to.transfer(userBalance[address(this)]);
        userBalance[address(this)] = 0;
    }
}
