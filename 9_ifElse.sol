//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;


contract IfElse {
    
    function condition (uint x ) public pure returns (uint) {
        if(x > 10) {
            return 0;
        } else if (x < 10) {
            return 1;
        } else {
            return 2;
        }
    }
}