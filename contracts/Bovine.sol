//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Bovine {
    
    string idOwner;

    uint256 idField;

    uint256 serialNumber;
    
    uint256 birthDate;

    bool active;

    string observation;

    uint256 idBovineParentOne;

    uint256 idBovineParentTwo;

    bool gender;

    constructor(string memory _idOwner, uint256 _idField, uint256 _serialNumber, uint256 _birthDate, bool _active, string memory _observation, 
                uint256 _idBovineParentOne, uint256 _idBovineParentTwo, bool _gender) {
        idOwner = _idOwner;
        idField = _idField;
        serialNumber = _serialNumber;
        birthDate = _birthDate;
        active = _active;
        observation = _observation;
        idBovineParentOne = _idBovineParentOne;
        idBovineParentTwo = _idBovineParentTwo;
        gender = _gender;
    }

    function setUpdate(uint256 _idField, uint256 _serialNumber, uint256 _birthDate, bool _active, 
        uint256 _idBovineParentOne, uint256 _idBovineParentTwo, bool _gender) public {
        idField = _idField;
        serialNumber = _serialNumber;
        birthDate = _birthDate;
        active = _active;
        idBovineParentOne = _idBovineParentOne;
        idBovineParentTwo = _idBovineParentTwo;
        gender = _gender;
    }

    function setIDOwner(string memory _idOwner) public {
        idOwner = _idOwner;
    }

    function getIDOwner() public view returns (string memory) {
        return idOwner;
    }

    function setIDField(uint256 _idField) public {
        idField = _idField;
    }

    function getIDField() public view returns (uint256) {
        return idField;
    }

    function setSerialNumber(uint256 _serialNumber) public {
        serialNumber = _serialNumber;
    }

    function getSerialNumber() public view returns (uint256) {
        return serialNumber;
    }
    
    function setBirthDate(uint256 _birthDate) public {
        birthDate = _birthDate;
    }

    function getBirthDate() public view returns (uint256) {
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

    function setIDBovineParentOne(uint256 _idBovineParentOne) public {
        idBovineParentOne = _idBovineParentOne;
    }

    function getIDBovineParentOne() public view returns (uint256) {
        return idBovineParentOne;
    }

    function setIDBovineParentTwo(uint256 _idBovineParentTwo) public {
        idBovineParentTwo = _idBovineParentTwo;
    }

    function getIDBovineParentTwo() public view returns (uint256) {
        return idBovineParentTwo;
    }

    function setGender(bool _gender) public {
        gender = _gender;
    }

    function getGender() public view returns (bool) {
        return gender;
    }
}