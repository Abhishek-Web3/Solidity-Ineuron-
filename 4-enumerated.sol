//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;

contract enum1{
    // enum FreshJuice {small, medium, large}
    // FreshJuice choice;

    enum FreshJuice {small, medium, large} FreshJuice choice;
    FreshJuice constant defaultChoice = FreshJuice.medium;

    function setlarge() public {
        choice = FreshJuice.large;
    }
    function setsmall() public {
        choice = FreshJuice.small;
    }

    function getChoice() public view returns(FreshJuice) {
        return choice;
    }

    function getDefault() public pure returns(uint) {
        return uint(defaultChoice );
    }
}