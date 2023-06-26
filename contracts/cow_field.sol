/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Field is ERC721{
    
    mapping(uint256 => string) public idOwner;

    mapping(uint256 => string) public fieldDescription;

    mapping(uint256 => string) public latitude;

    mapping(uint256 => string) public longitude; 
    
    mapping(uint256 => bool) public active;

    mapping(uint256 => string) public observation; 

    uint256 private totalSupply = 0;

    constructor () ERC721('CFLD', 'CFLD') { }

    function mint(string memory _idOwner, string memory _fieldDescription, string memory _latitude, string memory _longitude, bool _active, string memory _observation) public {
        
        uint256 tokenId = totalSupply + 1;
        idOwner[tokenId] = _idOwner;
        fieldDescription[tokenId] = _fieldDescription;
        latitude[tokenId] = _latitude;
        longitude[tokenId] = _longitude;
        active[tokenId] = _active;
        observation[tokenId] = _observation;

         _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function setUpdate(uint256 _tokenId, string memory _fieldDescription, string memory _latitude, string memory _longitude, bool _active, string memory _observation) public {
        fieldDescription[_tokenId] = _fieldDescription;
        latitude[_tokenId] = _latitude;
        longitude[_tokenId] = _longitude;
        active[_tokenId] = _active;
        observation[_tokenId] = _observation;
    }
}