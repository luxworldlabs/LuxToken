//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LuxWorldToken is ERC20("Lux World", "Lux") {
  constructor() {
    _mint(msg.sender, 2_000_000_000 ether);
  }
}