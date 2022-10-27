// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract Whitelist {
    uint8 public maxWhiteListedAddresses;

    mapping(address => bool) public whitelistedAddresses;

    uint public numAddressWhitelisted;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhiteListedAddresses = _maxWhitelistedAddresses;
    }

    function addAddressToWhitelist() public {
        require(
            !whitelistedAddresses[msg.sender],
            "sender has already been whitelisted"
        );
        require(
            numAddressWhitelisted < maxWhiteListedAddresses,
            "More addressed can't be added"
        );
        whitelistedAddresses[msg.sender] = true;
        numAddressWhitelisted += 1;
    }
}
