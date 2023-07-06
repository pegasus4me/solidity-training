// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


contract time {

    uint timestamp = block.timestamp;

    function checkTime(uint _time) public view returns(uint){
        if( _time > timestamp) 
            return _time + 1 hours + 20 minutes + 30 seconds;
                else 
                    return 0;
    }

}