// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRegistration {
    struct Student {
        string name;
        string surname;
        uint no;
    }

    function getStudentCount() external view returns (uint);
    function getStudent(uint _no) external view returns (Student memory);
    function registerStudent(string memory _name, string memory _surname, uint _no) external;
}


contract RegisterStudent is IRegistration {
    uint studentCount;
    mapping(uint => Student) students;

    function getStudentCount() external view override returns (uint) {
        return studentCount;
    }

    function registerStudent(string memory _name, string memory _surname, uint _no) external override {
        students[_no] = Student({name:_name, surname:_surname, no:_no });
        studentCount++;
    }

    function getStudent(uint _no) external view override returns (Student memory) {
        Student memory student = students[_no];
        return student;
    }
}
