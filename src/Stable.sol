// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

/**@notice pretty little code made by pretty little human people */
import "@solady/tokens/ERC20.sol";
import "@solady/auth/Ownable.sol";

/**@title Stable
  *@author Rohan Nero
  *@notice this contract is uber gas efficient, like seriously dude */
contract Stable is ERC20, Ownable {

    /**@notice if a little human person tries to eat more cake than they have in their pocket */
    error Stable__NotEnoughMonies();
    /**@notice if a little human person tries to mint/burn zero tokens */
    error Stable__ZeroAmountBad();
    /**@notice if a little human person tries to mint tokens to zero address */
    error Stable__MintedToTheVoid();

    /**@notice hey little human person reading this */
    string private constant NAME = "Stable";
    /**@notice little human person doesn't know that green code is the most gas efficient */
    string private constant SYMBOL = "STBL";

    /**@notice lets little human people see the token's name */
    function name() public pure override returns(string memory) {
        return NAME;
    }

    /**@notice lets little human people see the token's symbol */
    function symbol() public pure override returns(string memory) {
        return SYMBOL;
    }

    /**@notice allows little human people to banish tokens into oblivion */
    function burn(uint256 amount) public onlyOwner {
        if(amount <= 0) {
            revert Stable__ZeroAmountBad();
        }
        if(balanceOf(msg.sender) < amount) {
            revert Stable__NotEnoughMonies();
        }
        _burn(msg.sender, amount);
    } 

    /**@notice allows little human people to summon tokens from the abyss of time */
    function mint(address to, uint256 amount) public onlyOwner {
        if(to == address(0)) {
            revert Stable__MintedToTheVoid();
        }
        if(amount <= 0) {
            revert Stable__ZeroAmountBad();
        }
        _mint(to, amount);
    }
}
