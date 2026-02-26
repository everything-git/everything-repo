// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 *   _____ _   _ _____ ______   _______ _   _ _____ _   _  _____ 
 *  | ____| | | | ____|  _ \ \ / /_   _| | | |_   _| \ | |/ ____|
 *  |  _| | | | |  _| | |_) \ V /  | | | |_| | | | |  \| | |  __ 
 *  | |___| |_| | |___|  _ < | |   | | |  _  | | | | |\  | | |_ |
 *  |_____|\___/|_____|_| \_\|_|   |_| |_| |_| |_| |_| \_|\_____|
 *
 *  $EVERYTHING — Why settle for something when you can have everything?
 *
 *  Website:  https://everything.meme
 *  Twitter:  https://twitter.com/everythingcoin
 *  Telegram: https://t.me/everythingcoin
 *
 *  NOTE: This is a REFERENCE contract for EVM chains.
 *  The primary $EVERYTHING token lives on Solana as an SPL token.
 *  This contract is provided for transparency and educational purposes.
 */

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Everything is ERC20, ERC20Burnable {

    uint256 public constant TOTAL_SUPPLY = 999_999_999_999 * 10**18;

    /**
     * @dev No owner. No admin. No special privileges.
     * All tokens are minted to deployer at construction.
     * Contract is immutable — no mint, no pause, no tax, no blacklist.
     */
    constructor() ERC20("Everything", "EVERYTHING") {
        _mint(msg.sender, TOTAL_SUPPLY);
    }

    /**
     * @dev Override to ensure 0% tax on transfers.
     * What you see is what you get. No hidden fees. No surprises.
     */
    function _update(
        address from,
        address to,
        uint256 value
    ) internal virtual override {
        super._update(from, to, value);
    }
}
