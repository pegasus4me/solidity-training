// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


import "./Register.sol";

contract RegisterExtend is Register {

    uint fee  = 0.001 ether;
    
    function getStudentDetails(uint _roolNumber) external view returns(Student memory){
        return studentsLiaison[_roolNumber];
    }
}