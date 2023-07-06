// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract lifeCycle {
    enum Months {
        Infant,
        Toddler,
        Child,
        TeenAger,
        Adult,
        Old,
        Dead
    }

    function getStage(uint _months) public pure returns (Months) {
       
        if (_months < 1) {
            return Months.Infant;
        } else if (_months >= 1 && _months <= 2) {
            return Months.Toddler;
        } else if (_months >= 3 && _months <= 12) {
            return Months.Child;
        } else if (_months >= 13 && _months <= 19) {
            return Months.TeenAger;
        } else if (_months >= 20 && _months <= 60) {
            return Months.Adult;
        } else if (_months > 20) {
            return Months.Old;
        } else {
            return Months.Dead;
        }
    }
}
