/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract User {

    uint256 public idUserType;

    string public name;

    uint256 public birthDate;
    
    string public email;

    bool public active; 

    constructor(uint256 _idUserType, string memory _name, uint256 _birthDate, string memory _email, bool _active) {
        
        idUserType = _idUserType;
        name = _name;
        birthDate = _birthDate;
        email = _email;
        active = _active;
    }

    function setUpdate(uint256 _idUserType, string memory _name, uint256 _birthDate, string memory _email, bool _active) public {
       idUserType = _idUserType;
        name = _name;
        birthDate = _birthDate;
        email = _email;
        active = _active;
    }
}