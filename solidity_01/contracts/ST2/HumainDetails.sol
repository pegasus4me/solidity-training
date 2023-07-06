// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

import "./DetailsUsingInter.sol";

interface IHumainDetails is INames, IAge, IMedical {
    function getAllDetails() external view returns (uint, string memory);
}

abstract contract Humain is IHumainDetails {
    string name;
    string lastName;
    uint age;
    string bloodGroup;
    bool addictions;

    function setName(string memory _name) external {
        name = _name;
    }

    function getName() external view returns (string memory) {
        return name;
    }

    function setLastName(string memory _lastname) external {
        lastName = _lastname;
    }

    function getLastName() external view returns (string memory) {
        return lastName;
    }

    function setAge(uint _age) external {
        require(_age < 18, "to old");
        age = _age;
    }

    function getAge() external view returns (uint) {
        return age;
    }

    function getBloodGroud() external view override returns (string memory) {}

    function getAddictions() external view override returns (bool) {}

    function getAllDetails()
        external
        view
        override
        returns (uint, string memory)
    {}
}
