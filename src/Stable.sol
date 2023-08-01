// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@solady/tokens/ERC20.sol";

contract Stable is ERC20{

    string private constant NAME = "Stable";
    string private constant SYMBOL = "STBL";
    
    constructor() ERC20() {
    }

    function name() public pure override returns(string memory) {
        return NAME;
    }

    function symbol() public pure override returns(string memory) {
        return SYMBOL;
    }
}
