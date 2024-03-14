// SPDX-License-Identifier: MIT
// Indicates the version
pragma solidity >=0.4.4 <0.7.0;

contract time {

    //Time units
    uint public current_time = now;
    uint public a_minute = 1 minutes;
    uint public two_hours = 2 hours;
    uint public fifty_days = 50 days;
    uint public one_week = 1 weeks;

    //We operate with the time units
    function MoreSeconds() public view returns (uint){
        return now + 50 seconds;
    }

    function MoreHours() public view returns (uint){
        return now + 1 hours;
    }

    function MoreDays() public view returns (uint){
        return now + 3 days;
    }

    function MoreWeeks() public view returns (uint){
        return now + 1 weeks;
    }

}