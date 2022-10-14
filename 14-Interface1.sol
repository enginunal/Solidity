// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IRegistration {
    struct Person {
        string name;
        string surname;
        uint no;
    }
    
    function getCount() external view returns (uint);
    function getPerson(uint _no) external view returns (Person memory);
    function registerPerson(string memory _name, string memory _surname, uint _no) external;
}

contract RegisterStudent is IRegistration {
    uint studentCount;
    mapping(uint => Person) students;

    function getCount() external view override returns (uint) {
        return studentCount;
    }

    function registerPerson(string memory _name, string memory _surname, uint _no) external override {
        students[_no] = Person({name:_name, surname:_surname, no:_no });
        studentCount++;
    }

    function getPerson(uint _no) external view override returns (Person memory) {
        Person memory student = students[_no];
        return student;
    }
}

contract RegisterTeacher is IRegistration {
    uint teacherCount;
    mapping(uint => Person) teachers;

    function getCount() external view override returns (uint) {
        return teacherCount;
    }

    function registerPerson(string memory _name, string memory _surname, uint _no) external override {
        teachers[_no] = Person({name:_name, surname:_surname, no:_no });
        teacherCount++;
    }

    function getPerson(uint _no) external view override returns (Person memory) {
        Person memory student = teachers[_no];
        return student;
    }
}
