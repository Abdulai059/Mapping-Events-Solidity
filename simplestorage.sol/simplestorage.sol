// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint256 private favoriteNumber; // Stores the user's favorite number

    uint256[] public favoriteNumbers; // Dynamic array to store multiple favorite numbers

    // Struct to store a person’s name and their favorite number
    struct Person {
        string name; // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    Person[] public people; // Array of Person structs to store multiple people's data

    //Mapping string( name of person) => (unt256) favoriteNumber
    mapping(string => uint256) public nameTofavoriteNumber;

    // defining an events
    event NumberUpdated(uint256 newNumber, address updatedBy);

    // Enum to manage contract states (Active or Inactive)
    enum ContractState {
        Active, // State representing an active contract
        Inactive // State representing an inactive contract
    }

    ContractState public state; // State variable to store the current contract state

    // Function to store a number in the storage variable
    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    function isGreaterThan(uint256 _compareValue) public view returns (bool) {
        if (favoriteNumber > _compareValue) {
            return true;
        } else {
            return false;
        }
    }

    // Loops allowing us to Calculates and returns the sum of all numbers from 1 to the stored favorite number.
    function sumFavorite() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= favoriteNumber; i++) {
            sum += i;
        }
        return sum;
    }

    //Add functions with various visibilities such us Public, Private, Internal and External levels to demonstrate their usage

    function internalFunction() internal pure returns (string memory) {
        return "This is an internal function"; // Internal: can be accessed within this contract or derived contracts
    }

    //  Wrapper function to expose internalFuction for testing purposes
    function callInternalFunction() public pure returns (string memory) {
        return internalFunction(); // Calls the internal fuction from within the contract
    }

    function externalFunction() external pure returns (string memory) {
        return "This is an external function"; // Externals: Can only be called from outside the contract
    }

    function textExternalFunction() public view returns (string memory) {
        return this.textExternalFunction(); // Calls the external fuction within the contract using 'this'
    }

    function addFavoriteNumber(uint256 _number) public {
        favoriteNumbers.push(_number);
    }

    // Struct Funtion (not that this function was having a public view before i turn it to private)
    function addPerson(string memory _name, uint256 _favoriteNumber) private {
        people.push(Person(_name, _favoriteNumber));
    }

    // Implement an emum
    function activateContract() public {
        state = ContractState.Active;
    }

    function deactivateContract() public {
        state = ContractState.Inactive;
    }

    function isActive() public view returns (bool) {
        return state == ContractState.Active;
    }

    // implement mapping function
    function addperson(string memory _name, uint256 _favoriteNumber) public {
        nameTofavoriteNumber[_name] = _favoriteNumber;
    }

    // implement Event function
    function storeFavoriteNumber(uint256 _favoriteNumber) public {
        emit NumberUpdated(_favoriteNumber, msg.sender);
    }

    // Function that use a memory variable
    function updateNumber(uint256 _newNumber) public pure returns (uint256) {
        // Memory variable is use for temporary calculations
        uint256 tempNumber = _newNumber + 5;
        return tempNumber;
    }

    // Function that use a calldata variable
    function ContractStateString(string calldata _inputString) public pure returns (string memory) {
       // Memory variable to store the concatenated result 
       string memory newString = string(abi.encodePacked(_inputString, "is awesome!"));
       return newString;
    }
}
