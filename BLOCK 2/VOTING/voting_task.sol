//SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

// -----------------------------------
//  CANDIDATE   |   AGE   |      ID
// -----------------------------------
//  Toni        |    20    |    12345X
//  Alberto     |    23    |    54321T
//  Joan        |    21    |    98765P
//  Javier      |    19    |    56789W


contract votingTask {

    //Address of contract owner
    address owner;

    //We store the time value at which the elections begin
    uint start_voting;

    //constructor
    constructor () public {
        owner = msg.sender;
        start_voting = now;
    }

    //Relationship between the candidate's name and the hash of his personal data
    mapping(string => bytes32) ID_Candidate;
    //Relationship between candidate's name and number of votes
    mapping(string => uint) candidate_votes;
    //List to store the names of the candidates
    string [] candidates;
    //List of voter ID hashes
    bytes32 [] voters;

    //Any person can use this function to run for election.
    function Represent(string memory namePerson, uint _agePerson, string memory _idPerson) public {
        //Tenemos la mitad del tiempo total para que se presenten candidatos
        require(now <= (start_voting + 1 minutes) / 2, "Candidates can no longer be nominated");
        //Candidate data hash
        bytes32 hash_Candidate = keccak256(abi.encodePacked(namePerson, _agePerson, _idPerson));
        //We store the hash of the candidate's data linked to his or her name
        ID_Candidate[namePerson] = hash_Candidate;
        //We store the candidate's name
        candidates.push(namePerson);
    }

    //Allows you to view the people who have presented themselves as candidates for voting.
    function ShowCandidates() public view returns (string[] memory){
        //Returns the list of submitted candidates
        return candidates;
    }

    //Voters will be able to vote
    function Vote(string memory _candidate) public {
        //You can only vote during the voting period.
        require(now <= start_voting + 1 minutes, "Voting is no longer possible");
        //Hash of the address of the person executing this function
        bytes32 hash_Voter = keccak256(abi.encodePacked(msg.sender));
        //We verify if the voter has already voted.
        for (uint i = 0; i < voters.length; i++) {
            require(voters[i] != hash_Voter, "You have already voted");
        }
        //We store the voter's hash inside the voter array
        voters.push(hash_Voter);
        //Verify that the candidate is in the candidate list
        //The flag variable will be true if the candidate is in the list.
        bool flag = false;

        for (uint j = 0; j < candidates.length; j++) {
            //We compare the name of the candidate with the name of the candidate at position i
            if (keccak256(abi.encodePacked(candidates[j])) == keccak256(abi.encodePacked(_candidate))) {
                //If they match, we change the value of flag
                flag = true;
            }
        }
        //The candidate must be on the list in order to vote.
        require(flag == true, "There is no candidate with this name");
        //We add one vote to the selected candidate
        candidate_votes[_candidate]++;
    }

    //Given the name of a candidate returns the number of votes he/she has.
    function ViewVotes(string memory _candidate) public view returns (uint){
        //Returning the number of votes of the candidate _candidate
        return candidate_votes[_candidate];
    }

    //Auxiliary function that transforms a uint to a string
    function uint2str(uint _i) internal pure returns (string memory _uintAsString) {
        if (_i == 0) {
            return "0";
        }

        uint j = _i;
        uint len;

        while (j != 0) {
            len++;
            j /= 10;
        }

        bytes memory bstr = new bytes(len);
        uint k = len - 1;

        while (_i != 0) {
            bstr[k--] = byte(uint8(48 + _i % 10));
            _i /= 10;
        }

        return string(bstr);
    }

    //View the votes of each candidate
    function ViewResult() public view returns (string memory){
        //We store in a string variable the candidates with their respective votes.
        string memory results = "";
        //We traverse the array of candidates to update the results string
        for (uint i = 0; i < candidates.length; i++) {
            // We update the string results and add the candidate that occupies the position "i" of the array candidates
            //and its number of votes
            results = string(abi.encodePacked(results, "(", candidates[i], ", ", uint2str(ViewVotes(candidates[i])), ") -----"));
        }
        //We return the results
        return results;
    }

    //Provide the name of the winning candidate
    function Winner() public view returns (string memory){
        //The function cannot be executed until voting is finished.
        require(now > (start_voting + 1 minutes), "Voting has not yet ended");
        //The variable winner will contain the name of the winning candidate.
        string memory winner = candidates[0];
        bool flag;
        //We go through the array of candidates to determine the candidate with the highest number of votes.
        for (uint i = 1; i < candidates.length; i++) {
            if (candidate_votes[winner] < candidate_votes[candidates[i]]) {
                winner = candidates[i];
                flag = false;
            }

            if (candidate_votes[winner] == candidate_votes[candidates[i]]) {
                flag = true;
            }
        }

        if (flag == true) {
            winner = "There is a tie between the candidates!";
        }
        return winner;
    }
}