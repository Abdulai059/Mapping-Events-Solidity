// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity verision

contract SimpleStorage {
    // favoriteNumber gets initiallize to 0n if no value is given
    uint256 public myFavoriteNumber; //0

    // Storing other People FavoriteNumber
    // uint256[] listfavoriteNumber;
    struct person {
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    person[] public listOfPeople; //[]

    // person  public pat = person({favoriteNumber: 7, name: "pat"});
    // person  public bat = person({favoriteNumber: 90, name: "bat"});

    // mapping a string => uint256 (33)
    mapping(string => uint256) public nameTofavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // Veiw, pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(person(_favoriteNumber, _name));
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }
}
