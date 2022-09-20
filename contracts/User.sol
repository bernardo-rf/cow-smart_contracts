//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract User{

    int idUserType;

    string name;

    string birthDate;

    string email;

    string password;

    bool active;

    constructor(int _idUserType, string memory _name, string memory _birthDate, string memory _email, string memory _password, bool _active) {
        idUserType = _idUserType;
        name = _name;
        birthDate = _birthDate;
        email = _email;
        password = _password;
        active = _active;
    }

    function setUpdate(int _idUserType, string memory _name, bool _active) public {
        idUserType = _idUserType;
        name = _name;
        active = _active;
    }

    function setIDUserType(int _idUserType) public {
        idUserType = _idUserType;
    }

    function getIDUserType() public view returns (int) {
        return idUserType;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setBirthDate(string memory _birthDate) public {
        birthDate = _birthDate;
    }

    function getBirthDate() public view returns (string memory) {
        return birthDate;
    }

    function setEmail(string memory _email) public {
        email = _email;
    }

    function getEmail() public view returns (string memory) {
        return email;
    }

    function setActive(bool _active) public {
        active = _active;
    }

    function getActive() public view returns (bool) {
        return active;
    }
}