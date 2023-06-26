/*
 *
 * @Copyright 2023  @bernardo.figueiredo - Politécnico de Leiria
 *
 */
 
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Appointment is ERC721{

    mapping(uint256 => uint256) public idBovine;

    mapping(uint256 => uint256) public idUser;

    mapping(uint256 => uint256) public appointmentDate;

    mapping(uint256 => string) public appointmentType;

    mapping(uint256 => string) public observation;

    uint256 private totalSupply = 0;

    constructor () ERC721('CAPP', 'CAPP') { }

    function mint(uint256 _idBovine, uint256 _idUser, uint256 _appointmentDate,string memory _appointmentType, string memory _observation) public {
        require(isValueNotZero(_idBovine) && isValueNotZero(_idUser) && isValueNotZero(_appointmentDate) && isStringNotEmpty(_appointmentType) && isStringNotEmpty(_observation), "COW: Invalid arguments.");

        uint256 tokenId = totalSupply + 1;
        idBovine[tokenId] = _idBovine;
        idUser[tokenId] = _idUser;
        appointmentDate[tokenId] = _appointmentDate;
        appointmentType[tokenId] = _appointmentType;
        observation[tokenId] = _observation;

        _safeMint(msg.sender, tokenId);
        totalSupply += 1;
    }

    function isStringNotEmpty(string memory _data) internal pure returns (bool) {
        return keccak256(bytes(_data)) != keccak256(bytes(""));
    }

    function isValueNotZero(uint256 _value) internal pure returns (bool) {
        return _value != 0;
    }

    function setUpdate(uint256 _tokenId, uint256 _idBovine, uint256 _idUser, uint256 _appointmentDate) public {
        idBovine[_tokenId] = _idBovine;
        idUser[_tokenId] = _idUser;
        appointmentDate[_tokenId] = _appointmentDate;
    }
}