//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;


contract IfElseTask {
    function checkcondition(int x) public pure returns(int) {
        // if (x > 0 && x < 10) {
        //     return 1;
        // } else if (x > 11 && x < 20) {
        //     return 2;
        // } else if(x > 20 && x < 30) {
        //     return 3;
        // } else if (x > 31) {
        //     return 4;
        // } else {
        //     return 0;
        // }

// the best way....

        if (x > 0 && x < 10) return 1;
        else if (x > 11 && x < 20)  return 2;
        else if(x > 20 && x < 30) return 3;
        else if (x > 31) return 4;
        else return 0;


    }
}