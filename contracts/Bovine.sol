//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Bovine {
    
    string idOwner;

    int idField;

    int serialNumber;
    
    string birthDate;

    bool active;

    string observation;

    int idBovineParent1;

    int idBovineParent2;

    bool gender;

    constructor(string memory _idOwner, int _idField, int _serialNumber, string memory _birthDate, bool _active, string memory _observation, 
                int _idBovineParent1, int _idBovineParent2, bool _gender) public {
        idOwner = _idOwner;
        idField = _idField;
        serialNumber = _serialNumber;
        birthDate = _birthDate;
        active = _active;
        observation = _observation;
        idBovineParent1 = _idBovineParent1;
        idBovineParent2 = _idBovineParent2;
        gender = _gender;
    }

    function setUpdate(string memory _idOwner, int idField, bool _active) public {
        idOwner = _idOwner;
        active = _active;
        active = _active;
    }

    function setIDOwner(string memory _idOwner) public {
        idOwner = _idOwner;
    }

    function getIDOwner() public view returns (string memory) {
        return idOwner;
    }

    function setIDField(int _idField) public {
        idField = _idField;
    }

    function getIDField() public view returns (int) {
        return idField;
    }

    function setSerialNumber(int _serialNumber) public {
        serialNumber = _serialNumber;
    }

    function getSerialNumber() public view returns (int) {
        return serialNumber;
    }
    
    function setBirthDate(string memory _birthDate) public {
        birthDate = _birthDate;
    }

    function getBirthDate() public view returns (string memory) {
        return birthDate;
    }

    function setActive(bool _active) public {
        active = _active;
    }

    function getActive() public view returns (bool) {
        return active;
    }

    function setObservation(string memory _observation) public {
        observation = _observation;
    }

    function getObservation() public view returns (string memory) {
        return observation;
    }

    function setIDBovineParent1(int _idBovineParent1) public {
        idBovineParent1 = _idBovineParent1;
    }

    function getIDBovineParent1() public view returns (int) {
        return idBovineParent1;
    }

    function setIDBovineParent2(int _idBovineParent2) public {
        idBovineParent2 = _idBovineParent2;
    }

    function getIDBovineParent2() public view returns (int) {
        return idBovineParent2;
    }

    function setGender(bool _gender) public {
        gender = _gender;
    }

    function getGender() public view returns (bool) {
        return gender;
    }
}