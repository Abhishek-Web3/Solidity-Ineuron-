//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

// if one methode is abgtarct in this case we need to marked the contract as abstract contract
abstract contract CalcTemplate {
    function op() public virtual returns(uint);  // abstract function 

    function getValue() public pure returns(uint) {
        return 2;
    }
}


contract Add is CalcTemplate{
    uint public num1;
    uint public num2;


    function op() public override view returns(uint) {
        return num1 + num2;
    }
}