//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract learningMapping {
    // ampping of address to uint
    // mapping is an user define data strcuture
    mapping (address => uint) public myMap1;

    function get(address _addr) public view returns (uint) {
        return myMap1[_addr];
    }
    function set(address _addr, uint _i) public {
        // square bracket data is kry
        myMap1[_addr]  = _i;
    }



}