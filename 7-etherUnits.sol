//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;

contract EtherUint {
    uint public Onewei = 1 wei;
    bool public isOneWei = 1 wei == 1;

    uint public oneEther     = 1 ether;  // 10^18 because it is on wei 
    // divinde into two parts 
    // first part - evaluate the expression on roight side
    //  second part - assign yhr evaluated expression to the bvariable 
    bool public isOneEther = 1 ether == 1;



}