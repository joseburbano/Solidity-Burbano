// SPDX-License-Identifier: MIT
pragma solidity >=0.4.4 < 0.7.0;
pragma experimental ABIEncoderV2;

// -----------------------------------
//  ALUMNO   |    ID    |      NOTA
// -----------------------------------
//  Marcos |    77755N    |      5
//  Joan   |    12345X    |      9
//  Maria  |    02468T    |      2
//  Marta  |    13579U    |      3
//  Alba   |    98765Z    |      5

contract notes {

    // Teacher's address
    address public professor;

    // Constructor 
    constructor () public {
        professor = msg.sender;
    }

    // Mapping to relate the hash of the student's identity to his or her exam score
    mapping(bytes32 => uint) Notes;

    // Array of students requesting test revisions
    string [] revisions;

    // Events
    event student_evaluated(bytes32);
    event event_revision(string);

    // Function to evaluate students
    function Evaluate(string memory _idStudent, uint _note) public OnlyProfessor(msg.sender) {
        // Student ID Hash
        bytes32 hash_idStudent = keccak256(abi.encodePacked(_idStudent));
        // Relationship between the hash of the student ID and the student's grade
        Notes[hash_idStudent] = _note;
        // Broadcast of the event
        emit student_evaluated(hash_idStudent);
    }

    // Control of the functions executable by the teacher
    modifier OnlyProfessor(address _address){
        // Requires the address entered by parameter to be equal to the owner of the contract.
        require(_address == professor, "You do not have permissions to run this function.");
        _;
    }

    // Function to view a student's grades
    function SeeNotes(string memory _idStudent) public view returns (uint) {
        // Student ID Hash
        bytes32 hash_idStudent = keccak256(abi.encodePacked(_idStudent));
        // Note associated with the student's hash
        uint student_note = Notes[hash_idStudent];
        // Display the note
        return student_note;
    }

    // Function to request a review of the exam
    function Review(string memory _idStudent) public {
        // Storing the student's identity in an array
        revisions.push(_idStudent);
        // Broadcast of the event
        emit event_revision(_idStudent);
    }

    // Function to view students who have requested exam review
    function SeeReviews() public view OnlyProfessor(msg.sender) returns (string [] memory){
        // Return student identities
        return revisions;
    }
}