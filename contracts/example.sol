// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // sebaiknya pakai ^ biar fleksibel

contract SimpStorage {

    uint256 public myFavoriteNumber; // Storage

    // uint256[] listofFavoriteNumber;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // Dinamic array
    Person[] public listOfPeople;

    // Person public Kyo = Person({favoriteNumber: 7, name: "Kyo"});
    // Person public Ryu = Person({favoriteNumber: 5, name: "Ryu"});

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoritePerson, _name);
        listOfPeople.push( Person(_favoriteNumber, name));
        nameToFavoriteNumber[name] = _favoriteNumber;
    }
}