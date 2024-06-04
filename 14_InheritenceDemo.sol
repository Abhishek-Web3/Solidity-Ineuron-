//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Computer {
    function compute() public pure returns(string memory){
        return "Computing.............";
    }
    function show() public virtual pure returns(string memory) {
        return "Show computer configurationnn,,,,,,,,,..............";
    }
}

contract Laptop is Computer {
    function show() public override pure returns (string memory) {
        return "i5, 100gb SSD, 1TB HDD ";
    }
}