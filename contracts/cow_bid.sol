/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Bid {
    
    uint256 public idAuction;

    uint256 public idBidder;
    
    uint256 public bidDate;

    constructor(uint256 _idAuction, uint256 _idBidder, uint256 _bidDate) {
        
        idAuction = _idAuction;
        idBidder = _idBidder;
        bidDate = _bidDate;
    }
}