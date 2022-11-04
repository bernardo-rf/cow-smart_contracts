//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Auction {
    
    uint256 idBovine;

    string idOwner;

    string auctionDescription;
    
    uint256 startDate;

    uint256 endDate;

    uint32 status;

    constructor( uint256 _idBovine, string memory _idOwner, string memory _auctionDescription, uint256 _startDate, uint256 _endDate, uint32 _status) {
        idBovine = _idBovine;
        idOwner = _idOwner;
        auctionDescription = _auctionDescription;
        startDate = _startDate;
        endDate = _endDate;
        status = _status;
    }

    function setUpdate(uint256 _idBovine, uint256 _startDate, uint256 _endDate) public {
        idBovine = _idBovine;
        startDate = _startDate;
        endDate = _endDate;
    }

    function setIDBovine(uint256 _idBovine) public {
        idBovine = _idBovine;
    }

    function getIDBovine() public view returns (uint256) {
        return idBovine;
    }

    function setIDOwner(string memory _idOwner) public {
        idOwner = _idOwner;
    }

    function getIDOwner() public view returns (string memory) {
        return idOwner;
    }

    function setStartDate(uint256 _startDate) public {
        startDate = _startDate;
    }

    function getStartDate() public view returns (uint256) {
        return startDate;
    }
    
    function setEndDate(uint256 _endDate) public {
        endDate = _endDate;
    }

    function getEndDate() public view returns (uint256) {
        return endDate;
    }

    function setStatus(uint32 _status) public {
        status = _status;
    }

    function getStatus() public view returns (uint32) {
        return status;
    }
}