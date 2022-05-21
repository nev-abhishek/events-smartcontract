// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 favouriteNumber;
    event storedNumber(
        uint256 indexed oldNumber,
        uint256 indexed newNumber,
        uint256 addedNumber,
        address sender
    );

    function store (uint256 newFavouriteNumber) public {
        favouriteNumber = newFavouriteNumber;
        emit storedNumber(
            favouriteNumber,
            newFavouriteNumber,
            favouriteNumber + newFavouriteNumber,
            msg.sender
        );
    }

    function retrieve () public view returns (uint256) {
        return favouriteNumber;
    }
}