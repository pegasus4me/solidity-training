// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract prime {
    
    function ifPrime(int _number) external pure returns(bool){
        if(_number == 1) return false;
            for(int i = 2; i < _number; i++) {
                    if(_number % i == 0){
                        return false;
                    }

            }
            return true;

    }
}