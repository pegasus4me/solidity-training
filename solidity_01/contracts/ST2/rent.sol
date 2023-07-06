// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Rent {
    string public name;
    uint32 public age;
    string public occupation;
    address payable public landlord;

    constructor(string memory _name, uint32 _age, string memory _occupation) {
        name = _name;
        age = _age;
        occupation = _occupation;
        landlord = payable(msg.sender);
    }

    event received(uint value, address sender);

    receive() external payable {
        emit received(msg.value, msg.sender);
    }
}
