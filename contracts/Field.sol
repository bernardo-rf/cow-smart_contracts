//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Field {

    string fieldDescription;

    string latitude;

    string longitude;

    bool active;

    string observation;

    string idOwner;

    constructor(string memory _fieldDescription, string memory _latitude, string memory _longitude, bool _active, string memory _observation, string memory _idOwner) {
        fieldDescription = _fieldDescription;
        latitude = _latitude;
        longitude = _longitude;
        active = _active;
        observation = _observation;
        idOwner = _idOwner;
    }

    function setUpdate(bool _active) public {
        active = _active;
    }

    function setFieldDescription(string memory _fieldDescription) public {
        fieldDescription = _fieldDescription;
    }

    function getFieldDescription() public view returns (string memory) {
        return fieldDescription;
    }

    function setLatitude(string memory _latitude) public {
        latitude = _latitude;
    }

    function getLatitude() public view returns (string memory) {
        return latitude;
    }

      function setLongitude(string memory _longitude) public {
        longitude = _longitude;
    }

    function getLongitude() public view returns (string memory) {
        return longitude;
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

    function setIDOwner(string memory _idOwner) public {
        idOwner = _idOwner;
    }

    function getIDOwner() public view returns (string memory) {
        return idOwner;
    }
}