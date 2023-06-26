/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Bovine is ERC721{
    
    mapping(uint256 => uint256) public idOwner;

    mapping(uint256 => uint256) public idField;

     mapping(uint256 => uint256) public serialNumber;

    mapping(uint256 => uint256) public birthDate;
    
    mapping(uint256 => bool) public active;

    mapping(uint256 => string) public observation; 

    mapping(uint256 => uint256) public idBovineParentOne; 

    mapping(uint256 => uint256) public idBovineParentTwo; 

    mapping(uint256 => bool) public gender;

    uint256 private totalSupply = 0;

    constructor () ERC721('CBVN', 'CBVN') { }

    function mint(uint256 _idOwner, uint256 _idField, uint256 _serialNumber, uint256 _birthDate, bool _active, string memory _observation, 
                uint256 _idBovineParentOne, uint256 _idBovineParentTwo, bool _gender) public {
        
        uint256 tokenId = totalSupply + 1;
        idOwner[tokenId] = _idOwner;
        idField[tokenId] = _idField;
        serialNumber[tokenId] = _serialNumber;
        birthDate[tokenId] = _birthDate;
        active[tokenId] = _active;
        observation[tokenId] = _observation;
        idBovineParentOne[tokenId] = _idBovineParentOne;
        idBovineParentTwo[tokenId] = _idBovineParentTwo;
        gender[tokenId] = _gender;

         _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function setUpdate(uint256 _tokenId, uint256 _idOwner, uint256 _idField, uint256 _serialNumber, uint256 _birthDate, bool _active, string memory _observation, 
                uint256 _idBovineParentOne, uint256 _idBovineParentTwo, bool _gender) public {
        idOwner[_tokenId] = _idOwner;
        idField[_tokenId] = _idField;
        serialNumber[_tokenId] = _serialNumber;
        birthDate[_tokenId] = _birthDate;
        active[_tokenId] = _active;
        observation[_tokenId] = _observation;
        idBovineParentOne[_tokenId] = _idBovineParentOne;
        idBovineParentTwo[_tokenId] = _idBovineParentTwo;
        gender[_tokenId] = _gender;
    }
}