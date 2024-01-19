# Game Smart Contract

Welcome to the Game smart contract repository! This Solidity contract is designed to facilitate a gaming environment where participants can engage in various activities and win rewards. The contract is built on the Ethereum blockchain and adheres to the MIT License.

## Overview

The Game smart contract consists of the following key features:

- **Owner and Protocol:** The contract includes an owner address and a protocol address, providing control and governance over the game.

- **Token and Vault:** Participants interact with the game using a specified token, and rewards are managed through a dedicated vault.

- **Events:** The contract emits a `won` event, providing transparency and traceability when a participant wins a game.

## Getting Started

To use the Game smart contract, follow these steps:

1. Deploy the contract, specifying the token, vault, and protocol addresses.
2. Interact with the contract using the provided functions, such as `jackpot` to reward winners and `buyPoints` to purchase points.

## Functions

- **jackpot:** Rewards a specified winner with a given amount, utilizing the associated vault.

- **setOwner:** Allows the owner to transfer ownership to a new address, enhancing flexibility and control.

- **buyPoints:** Enables participants to buy points by transferring the designated token to the contract, with corresponding rewards minted through the vault.

## Example Usage

```solidity
// Deploy the Game contract
Game game = new Game(tokenAddress, vaultAddress, protocolAddress);

// Reward a winner with a jackpot
game.jackpot(winnerAddress, amount);

// Transfer ownership to a new address
game.setOwner(newOwnerAddress);

// Buy points by transferring tokens to the contract
game.buyPoints(recipientAddress, amount);
