// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedReport {
    address public admin;

    struct Report {
        uint256 id;
        address student;
        string studentName;
        string course;
        string grade;
        bool verified;
    }

    mapping(uint256 => Report) public reports;
    mapping(address => bool) public teachers;
    uint256 public reportCount;

    event ReportAdded(uint256 id, address student, string studentName, string course, string grade);
    event ReportVerified(uint256 id, address teacher);

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    modifier onlyTeacher() {
        require(teachers[msg.sender], "Only teachers can perform this action");
        _;
    }

    modifier onlyStudentOrAdmin(uint256 _id) {
        require(
            msg.sender == reports[_id].student || msg.sender == admin,
            "Only the student or admin can access this report"
        );
        _;
    }

    // Function to add teachers
    function addTeacher(address _teacher) external onlyAdmin {
        teachers[_teacher] = true;
    }

    // Function to remove teachers
    function removeTeacher(address _teacher) external onlyAdmin {
        teachers[_teacher] = false;
    }

    // Function for a student to add a report
    function addReport(string memory _studentName, string memory _course, string memory _grade) external {
        reportCount++;
        reports[reportCount] = Report(reportCount, msg.sender, _studentName, _course, _grade, false);
        emit ReportAdded(reportCount, msg.sender, _studentName, _course, _grade);
    }

    // Function for a teacher to verify a report
    function verifyReport(uint256 _id) external onlyTeacher {
        require(!reports[_id].verified, "Report already verified");
        reports[_id].verified = true;
        emit ReportVerified(_id, msg.sender);
    }

    // Function to view a report
    function viewReport(uint256 _id) external view onlyStudentOrAdmin(_id) returns (Report memory) {
        return reports[_id];
    }
}
