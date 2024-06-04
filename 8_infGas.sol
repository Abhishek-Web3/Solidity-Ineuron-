//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;

contract gas1 {
    uint public i = 0;
    function runForever() public {
        while(true) {
            i=i+1;
        }
    }
}