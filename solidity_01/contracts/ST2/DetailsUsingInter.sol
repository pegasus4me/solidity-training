// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

interface INames {
    function getName() external view returns(string memory);
    function getLastName() external view returns(string memory);
}

interface IAge {
    function getAge() external view returns(uint);
}

interface IMedical {
    function getBloodGroud() external view returns(string memory);
    function getAddictions() external view returns(bool);
}
