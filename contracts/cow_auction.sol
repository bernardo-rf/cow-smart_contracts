/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Auction is ERC721{
    
    mapping(uint256 => uint256) public idBovine;

    mapping(uint256 => uint256) public idAuctioneer;

    mapping(uint256 => string) public auctionDescription;
    
    mapping(uint256 => uint256) public startDate;

    mapping(uint256 => uint256) public endDate; 

    mapping(uint256 => uint32) public status; 

    uint256 private totalSupply = 0;

    constructor () ERC721('CATC', 'CATC') { }

    function mint(uint256 _idBovine, uint256 _idAuctioneer, string memory _auctionDescription, uint256 _startDate, uint256 _endDate, uint32 _status) public {
        
        uint256 tokenId = totalSupply + 1;
        idBovine[tokenId] = _idBovine;
        idAuctioneer[tokenId] = _idAuctioneer;
        auctionDescription[tokenId] = _auctionDescription;
        startDate[tokenId] = _startDate;
        endDate[tokenId] = _endDate;
        status[tokenId] = _status;

         _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function setUpdate(uint256 _tokenId, uint256 _idBovine, uint256 _idAuctioneer, uint256 _startDate, uint256 _endDate, uint32 _status) public {
        idBovine[_tokenId] = _idBovine;
        idAuctioneer[_tokenId] = _idAuctioneer;
        startDate[_tokenId] = _startDate;
        endDate[_tokenId] = _endDate;
        status[_tokenId] = _status;
    }
}