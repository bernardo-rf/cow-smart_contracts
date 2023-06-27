/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Auction {
    
    uint256 public idBovine;

    uint256 public idAuctioneer;

    string public auctionDescription;
    
    uint256 public startDate;

    uint256 public endDate; 

    uint32 public status;

    constructor(uint256 _idBovine, uint256 _idAuctioneer, string memory _auctionDescription, uint256 _startDate, uint256 _endDate, uint32 _status) {
        
        idBovine = _idBovine;
        idAuctioneer = _idAuctioneer;
        auctionDescription = _auctionDescription;
        startDate = _startDate;
        endDate = _endDate;
        status = _status;
    }

    function setUpdate(uint256 _idBovine, uint256 _idAuctioneer, string memory _auctionDescription, uint256 _startDate, uint256 _endDate, uint32 _status) public {
       idBovine = _idBovine;
        idAuctioneer = _idAuctioneer;
        auctionDescription = _auctionDescription;
        startDate = _startDate;
        endDate = _endDate;
        status = _status;
    }
}