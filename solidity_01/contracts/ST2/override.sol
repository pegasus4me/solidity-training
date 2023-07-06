// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract ParentOrg {

    uint count; 
    struct Employee {
        string name; 
        uint age;
        string department; 
        string childOrgName;

    }

    mapping(uint => Employee) employes;

    function enroll(string memory _name, uint _age, string memory _department, string memory _childOrgName) external virtual{
        
        Employee memory _employe = Employee(
            _name,
            _age,
            _department,
            _childOrgName
        );
        count ++;
        employes[count] = _employe;
        
    }
}


contract Override is ParentOrg {
    
    function enroll(string memory _name, uint _age, string memory _department, string memory _childOrgName) override external {
        employes[count] = Employee(_name, _age, _department, _childOrgName);
    }
}
