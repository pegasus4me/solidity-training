// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract eventOdd {


    function check(int _number) public pure returns(string memory) {
        
        if(_number % 2 == 0) {
            return "the number is odd";
        } else {
            return "the number is even";
        }
    }    

}