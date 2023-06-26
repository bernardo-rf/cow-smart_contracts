/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract User is ERC721{

    mapping(uint256 => uint256) public idUserType;

    mapping(uint256 => string) public name;

    mapping(uint256 => uint256) public birthDate;
    
    mapping(uint256 => string) public email;

    mapping(uint256 => bool) public active; 

    uint256 private totalSupply = 0;

    constructor () ERC721('CUSR', 'CUSR') { }

    function mint(uint256 _idUserType, string memory _name, uint256 _birthDate, string memory _email, bool _active) public {
        
        uint256 tokenId = totalSupply + 1;
        idUserType[tokenId] = _idUserType;
        name[tokenId] = _name;
        birthDate[tokenId] = _birthDate;
        email[tokenId] = _email;
        active[tokenId] = _active;

         _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function setUpdate(uint256 _tokenId, uint256 _idUserType, string memory _name, uint256 _birthDate, string memory _email, bool _active) public {
        idUserType[_tokenId] = _idUserType;
        name[_tokenId] = _name;
        birthDate[_tokenId] = _birthDate;
        email[_tokenId] = _email;
        active[_tokenId] = _active;
    }
}