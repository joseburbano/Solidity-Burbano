// SPDX-License-Identifier: MIT
//Indicates the version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Events{

    //Declare the events to be used
    event event_name1 (string _namePerson);
    event event_name2 (string _namePerson, uint _agePerson);
    event event_name3(string, uint, address, bytes32);
    event abortmision();

    function IssueEvent1(string memory _namePerson) public{
        emit event_name1(_namePerson);
    }

    function IssueEvent2(string memory _namePerson, uint _age) public{
        emit event_name2(_namePerson, _age);
    }

    function IssueEvent3(string memory _namePerson, uint _age) public{
        bytes32 hash_id = keccak256(abi.encodePacked(_namePerson, _age, msg.sender));
        emit event_name3(_namePerson, _age, msg.sender, hash_id);
    }

    function AbortMission() public {
        emit abortmision();
    }
}