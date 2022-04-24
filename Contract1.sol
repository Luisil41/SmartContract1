// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract SimpleStorage {

    uint256 favoriteNumber;

    // This is a comment!
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns (uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

//blue botons are blue because they are view functions, not making any changes in the blockchain
//Pure functions always do some type of math
//If we use memory we only storage data during execution 
//With storage the data will persist even when the functions executes