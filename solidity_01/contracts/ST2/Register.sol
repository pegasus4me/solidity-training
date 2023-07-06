// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// https://github.com/Aniket-Engg/solidity-school/tree/master/std-2/5_AttendanceRegister

contract Register {

    address immutable teacher; 
    uint count; 

    constructor(){
        teacher = msg.sender; 
    }


    /**
     * @dev struct students
     */

    struct Student  {
   
        string name;
        uint class;
        uint joiningDate;
    }

    // create an Array that will store our student struct base
    
    // map to get ID for each student
    mapping(uint => Student) public studentsLiaison;


    modifier onlyTeacher{
        require(msg.sender == teacher, "not allowed to trigger this function");    
        _;
    }   

    event added (string name, uint class, uint joiningDate);

    function add(string memory _name, uint _class) external onlyTeacher {
        
        require(_class >= 1 && _class <= 12, "the number must be between 1 and 12");
    
        Student memory stud = Student(
            _name,
            _class,
            block.timestamp
        );
        count++;
        studentsLiaison[count] = stud;

        emit added(_name, _class, block.timestamp);
    }



}

