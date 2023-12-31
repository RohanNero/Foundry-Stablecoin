// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Stable.sol";

contract CounterTest is Test {
    Stable public stable;

    function setUp() public {
        stable = new Stable();
    }

    function test_Name() public {
        assertEq(stable.name(), "Stable");
    }

    function test_Symbol() public {
        assertEq(stable.symbol(), "STBL");
    }

}
