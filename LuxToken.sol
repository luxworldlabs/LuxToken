// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LuxWorldToken is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("LuxWorld", "LUX") {
        _mint(msg.sender, 2_000_000_000 ether);
    }

    function _beforeTokenTransfer(
        address from,
        address to,
        uint256 amount
    ) internal override(ERC20) {
        super._beforeTokenTransfer(from, to, amount);
    }

    function _transfer(
        address sender,
        address recipient,
        uint256 amount
    ) internal virtual override(ERC20) {
        super._transfer(sender, recipient, amount);
    }
}
