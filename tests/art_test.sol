// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/art.sol";

contract artTest {

    art s;
    function beforeAll () public {
        s = new art();
    }

    function testTokenNameAndSymbol () public {
        Assert.equal(s.name(), "art", "token name did not match");
        Assert.equal(s.symbol(), "ART", "token symbol did not match");
    }
}