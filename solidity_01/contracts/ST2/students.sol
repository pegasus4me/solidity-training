// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Student {

   mapping(uint => string) students;
   
   event Enrolled (uint roolNumber);
   

   function enroll(uint roolNumber , string memory _name) external {
        students[roolNumber] = _name;
        emit Enrolled(roolNumber);
   }
}