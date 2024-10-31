# SimpleStorage Smart Contract

This project is a Solidity smart contract built using Remix IDE. The contract demonstrates various fundamental and advanced concepts in Solidity, including mappings, events, storage types, enums, and different function visibilities. It’s designed to provide practical experience in handling data and optimizing for gas efficiency, with an organized contract that tracks favorite numbers, stores user data, and logs updates with events.

## Project Overview

The **SimpleStorage** contract includes the following features:
- **Mappings** for efficient data management.
- **Events** to log and communicate important actions.
- **Enums** to handle different states of the contract.
- **Storage types**: Demonstrates the use of `storage`, `memory`, and `calldata` and their impact on gas usage.
- **Function visibilities**: Demonstrates `public`, `private`, `internal`, and `external` functions.

## Contract Details

### Key Components

1. **Mappings**: 
   - The contract uses mappings to store each person's favorite number by their name.
   
2. **Events**:
   - An event, `NumberUpdated`, is emitted whenever the `favoriteNumber` is updated, allowing easy tracking of this change.

3. **Storage Types**:
   - The contract uses different storage types (`storage`, `memory`, and `calldata`) to optimize gas usage for temporary vs. permanent data.

4. **Enums**:
   - An enum `ContractState` is used to represent the contract's active and inactive states.

5. **Function Visibilities**:
   - Functions with `public`, `private`, `internal`, and `external` visibilities are used to demonstrate their roles and limitations.

## Functions

- `storeNumber(uint256 _favoriteNumber)`: Stores a favorite number.
- `getFavoriteNumber()`: Returns the stored favorite number.
- `isGreaterThan(uint256 _compareValue)`: Checks if the stored number is greater than a given value.
- `sumFavorite()`: Calculates the sum of numbers from 1 up to the stored favorite number.
- `addFavoriteNumber(uint256 _number)`: Adds a number to the list of favorite numbers.
- `addPersonToMapping(string memory _name, uint256 _favoriteNumber)`: Adds a person and their favorite number to the mapping.
- `storeFavoriteNumber(uint256 _favoriteNumber)`: Updates the favorite number and emits an event.
- `contractStateString(string calldata _inputString)`: Concatenates a string with " is awesome!" and returns it.

## Expected Outcomes

By the end of this project, you will have:
- Gained practical experience with mappings to manage data efficiently.
- Learned how to use events to log and communicate important actions.
- Mastered the differences between storage, memory, and calldata and their impact on gas usage.
- Developed and deployed an advanced smart contract that incorporates multiple concepts.

## Getting Started

### Prerequisites
- **Remix IDE** (or any Solidity compiler) for compiling and deploying the contract.
- **MetaMask** or other Ethereum wallet for interacting with the contract on test networks.

### Deployment
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Copy the contract code into a new Solidity file.
3. Compile the contract using Solidity version `0.8.25`.
4. Deploy the contract on the Remix JavaScript VM or connect Remix to a test network like Rinkeby or Goerli.

### Testing
- You can test the contract directly in Remix by calling each function and observing the results.
- Track events in Remix to see updates logged by the `NumberUpdated` event.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
