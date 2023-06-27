/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Appointment {

    uint256 public idBovine;

    uint256 public idVeterinary;

    uint256 public appointmentDate;

    string public appointmentType;

    string public observation;

    constructor (uint256 _idBovine, uint256 _idVeterinary, uint256 _appointmentDate,string memory _appointmentType, string memory _observation) { 
        require(isValueNotZero(_idBovine) && isValueNotZero(_idVeterinary) && isValueNotZero(_appointmentDate) && isStringNotEmpty(_appointmentType) && isStringNotEmpty(_observation), "COW: Invalid arguments.");

        idBovine = _idBovine;
        idVeterinary = _idVeterinary;
        appointmentDate = _appointmentDate;
        appointmentType = _appointmentType;
        observation = _observation;
    }

    function setUpdate(uint256 _idBovine, uint256 _idVeterinary, uint256 _appointmentDate,string memory _appointmentType, string memory _observation) public { 
        require(isValueNotZero(_idBovine) && isValueNotZero(_idVeterinary) && isValueNotZero(_appointmentDate) && isStringNotEmpty(_appointmentType) && isStringNotEmpty(_observation), "COW: Invalid arguments.");

        idBovine = _idBovine;
        idVeterinary = _idVeterinary;
        appointmentDate = _appointmentDate;
        appointmentType = _appointmentType;
        observation = _observation;
    }

    function isStringNotEmpty(string memory _data) internal pure returns (bool) {
        return keccak256(bytes(_data)) != keccak256(bytes(""));
    }

    function isValueNotZero(uint256 _value) internal pure returns (bool) {
        return _value != 0;
    }
}