/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Bid is ERC721{
    
    mapping(uint256 => uint256) public idAuction;

    mapping(uint256 => uint256) public idBidder;
    
    mapping(uint256 => uint256) public bidDate;

    uint256 private totalSupply = 0;

    constructor () ERC721('CBID', 'CBID') { }

    function mint(uint256 _idAuction, uint256 _idBidder, uint256 _bidDate) public {
        
        uint256 tokenId = totalSupply + 1;
        idAuction[tokenId] = _idAuction;
        idBidder[tokenId] = _idBidder;
        bidDate[tokenId] = _bidDate;

         _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function setUpdate(uint256 tokenId, uint256 _idAuction, uint256 _idBidder, uint256 _bidDate) public {
        idAuction[tokenId] = _idAuction;
        idBidder[tokenId] = _idBidder;
        bidDate[tokenId] = _bidDate;
    }
}