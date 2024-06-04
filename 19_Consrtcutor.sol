//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract A {
    // call while deployed the contracts
    // every contract has a custroctor 
    uint public num;
    // constructor() {
    //     num = 9;
    // }

    // parametrised contructor 
    constructor(uint _num) {
        num = _num;
    }

    // function update(uint _num) public {
    //     if(_num >= 5) {
    //          num = num + _num;
    //     }
    // }
    modifier check(uint _num2) {
        if(_num2 >= 5) {
            _;  // if this ocndition satesfied just execute the function 
        }
    }
    function update(uint _num) public check(_num){
             num = num + _num;
    }
    


}
