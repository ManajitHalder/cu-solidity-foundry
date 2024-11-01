// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // Adds a Person to the listOfPeople array
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person({
            favoriteNumber: _favoriteNumber,
            name: _name
        }));
        nameToFavoriteNumber[_name] = _favoriteNumber; 
    }

}
