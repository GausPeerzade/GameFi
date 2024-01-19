// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "./Vault.sol";

contract Game {
    address public owner;
    address public protocol;

    address public token;
    address public vault;

    event won(address winner, uint256 amount);

    constructor(address _token, address _vault, address _protocol) {
        token = _token;
        vault = _vault;
        protocol = _protocol;
        owner = msg.sender;
    }

    function jackpot(address _winner, uint256 _amount) public {
        Vault(vault).mintRewards(_winner, _amount);
        emit won(_winner, _amount);
    }

    function setOwner(address _new) public {
        require(msg.sender == owner, "only Owner is allowed");
        owner = _new;
    }


    function buyPoints(address _reci, uint256 _amount) public {
        IERC20(token).transferFrom(msg.sender, address(this), _amount);
        Vault(vault).mintRewards(_reci, _amount);
    }
}
