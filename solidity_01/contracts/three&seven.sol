// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract tree {
    function check(int _number) external pure returns (bool) {
        if (_number > 10 && _number % 7 == 0 || _number % 3 == 0) {
            return true;
        }
        return false;
        
    }
}
