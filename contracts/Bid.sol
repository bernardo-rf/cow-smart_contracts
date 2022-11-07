//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Bid {
    
    uint256 idAuction;

    string idBidder;

    uint256 bidDate;

    constructor(uint256 _idAuction, string memory _idBidder, uint256 _bidDate ) {
        idAuction = _idAuction;
        idBidder = _idBidder;
        bidDate = _bidDate;
    }

    function setIDAuction(uint256 _idAuction) public {
        idAuction = _idAuction;
    }

    function getIDAuction() public view returns (uint256) {
        return idAuction;
    }

    function setIDBidder(string memory _idBidder) public {
        idBidder = _idBidder;
    }

    function getIDBidder() public view returns (string memory) {
        return idBidder;
    }

    function setBidDate(uint256 _bidDate) public {
        bidDate = _bidDate;
    }

    function getBidDate() public view returns (uint256) {
        return bidDate;
    }

}