/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Field {
    
    string public idOwner;

    string public fieldDescription;

    string public latitude;

    string public longitude; 
    
    bool public active;

    string public observation;

    constructor(string memory _idOwner, string memory _fieldDescription, string memory _latitude, string memory _longitude, bool _active, string memory _observation) {
        
        idOwner = _idOwner;
        fieldDescription = _fieldDescription;
        latitude = _latitude;
        longitude = _longitude;
        active = _active;
        observation = _observation;
    }

    function setUpdate(string memory _idOwner, string memory _fieldDescription, string memory _latitude, string memory _longitude, bool _active, string memory _observation) public {
        idOwner = _idOwner;
        fieldDescription = _fieldDescription;
        latitude = _latitude;
        longitude = _longitude;
        active = _active;
        observation = _observation;
    }
}