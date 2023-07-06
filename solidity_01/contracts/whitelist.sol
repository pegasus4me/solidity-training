// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract SefWhitelist {

    address[] whitlistedPersons;
    
    function whitelist (address _address) external {
        if(_address == msg.sender){
            whitlistedPersons.push(_address);
        }
        
    }

    function check() public view returns(bool){
        for (uint256 i = 0; i < whitlistedPersons.length; i++) {
            if(whitlistedPersons[i] == msg.sender){
                return true;
            }
        }
        return false;
    }
}