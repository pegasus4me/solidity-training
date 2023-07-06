// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract allprime {

    uint[] public allNums;


    
    function addPrime(uint _num) internal { 
        require(_num >= 2, "cannot have nums less than 2" );
            delete allNums; //Clears all previous values stored in primes array, so we do not store duplicates
            for(uint i = 2; i < _num; i++) {
                if(ifPrime(i)){
                        allNums.push(i);
                }
            }
    }

    function getPrime() external view returns( uint [] memory){
            return allNums;
    }


    
    function ifPrime(uint _number) public pure returns(bool){
            if(_number == 1) return false;
                for(uint i = 2; i < _number; i++) {
                        if(_number % i == 0){
                            return false;
                        }

                }
                return true;

        }
    
}