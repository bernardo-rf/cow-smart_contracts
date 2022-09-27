//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract User {

    uint256 idUserType;

    string name;

    uint256 birthDate;

    string email;

    string password;

    bool active;

    uint256 balance;

    constructor(uint256 _idUserType, string memory _name, uint256 _birthDate, string memory _email, string memory _password, bool _active, uint256 _balance) {
        idUserType = _idUserType;
        name = _name;
        birthDate = _birthDate;
        email = _email;
        password = _password;
        active = _active;
        balance = _balance;
    }

    function setUpdate(uint256 _idUserType, uint256 _birthDate, bool _active) public {
        idUserType = _idUserType;
        birthDate = _birthDate;
        active = _active;
    }

    function setIDUserType(uint256 _idUserType) public {
        idUserType = _idUserType;
    }

    function getIDUserType() public view returns (uint256) {
        return idUserType;
    }

    function setName(string memory _name) public {
        name = _name;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setBirthDate(uint256 _birthDate) public {
        birthDate = _birthDate;
    }

    function getBirthDate() public view returns (uint256) {
        return birthDate;
    }

    function setEmail(string memory _email) public {
        email = _email;
    }

    function getEmail() public view returns (string memory) {
        return email;
    }

    function setPassword(string memory _password) public {
        password = _password;
    }

    function getPassword() public view returns (string memory) {
        return password;
    }

    function setActive(bool _active) public {
        active = _active;
    }

    function getActive() public view returns (bool) {
        return active;
    }

    function setBalance(uint256 _balance) public {
        balance = _balance;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }
}