//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Appointment{
    uint256 idBovine;

    uint256 idUser;

    uint256 appointmentDate;

    string appointmentType;

    uint256 cost;

    string observation;

    constructor(uint256 _idBovine, uint256 _idUser, uint256 _appointmentDate, string memory _appointmentType, uint256 _cost, 
                string memory _observation) {
        idBovine = _idBovine;
        idUser = _idUser;
        appointmentDate = _appointmentDate;
        appointmentType = _appointmentType;
        cost = _cost;
        observation = _observation;
    }

    function setUpdate(uint256 _idBovine, uint256 _idUser, uint256 _appointmentDate) public {
        idBovine = _idBovine;
        idUser = _idUser;
        appointmentDate = _appointmentDate;
    }

    function setIDBovine(uint256 _idBovine) public {
        idBovine = _idBovine;
    }

    function getIDBovine() public view returns (uint256)  {
        return idBovine;
    }

    function setIDUser (uint256 _idUser) public {
        idUser = _idUser;
    }

    function getIDUser() public view returns (uint256)  {
        return idUser;
    }

    function setAppointmentDate(uint256 _appointmentDate) public {
        appointmentDate = _appointmentDate;
    }

    function getAppointmentDate() public view returns (uint256)  {
        return appointmentDate;
    }

      function setAppointmentType(string memory _appointmentType) public {
        appointmentType = _appointmentType;
    }

    function getAppointmentType() public view returns (string memory) {
        return appointmentType;
    }

    function setCost(uint256 _cost) public {
        cost = _cost;
    }

    function getCost() public view returns (uint256) {
        return cost;
    }

    function setObservation(string memory _observation) public {
        observation = _observation;
    }

    function getObservation() public view returns (string memory) {
        return observation;
    }
}