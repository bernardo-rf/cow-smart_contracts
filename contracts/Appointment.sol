//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Appointment{
    int idBovine;

    int idVeterinary;

    string appointmentDate;

    string appointmentType;

    string cost;

    string observation;

    constructor(int _idBovine,int _idVeterinary, string memory _appointmentDate, string memory _appointmentType, string memory _cost, 
                string memory _observation) {
        idBovine = _idBovine;
        idVeterinary = _idVeterinary;
        appointmentDate = _appointmentDate;
        appointmentType = _appointmentType;
        cost = _cost;
        observation = _observation;
    }

    function setUpdate(int _idBovine,int _idVeterinary, string memory _appointmentDate) public {
        idBovine = _idBovine;
        idVeterinary = _idVeterinary;
        appointmentDate = _appointmentDate;
    }

    function setIDBovine(int _idBovine) public {
        idBovine = _idBovine;
    }

    function getIDBovine() public view returns (int) {
        return idBovine;
    }

    function setIDVeterinary(int _idVeterinary) public {
        idVeterinary = _idVeterinary;
    }

    function getIDVeterinary() public view returns (int) {
        return idVeterinary;
    }

    function setAppointmentDate(string memory _appointmentDate) public {
        appointmentDate = _appointmentDate;
    }

    function getAppointmentDate() public view returns (string memory) {
        return appointmentDate;
    }

      function setAppointmentType(string memory _appointmentType) public {
        appointmentType = _appointmentType;
    }

    function getAppointmentType() public view returns (string memory) {
        return appointmentType;
    }

    function setCost(string memory _cost) public {
        cost = _cost;
    }

    function getCost() public view returns (string memory) {
        return cost;
    }

    function setObservation(string memory _observation) public {
        observation = _observation;
    }

    function getObservation() public view returns (string memory) {
        return observation;
    }
}