//SPDX-License-Identifier:MIT

pragma solidity ^0.8.6;


// view functiom declares that no state will be changes 
// pure function declares no state will be changed and read 

// absatraction in solidity -we can say for solidity 

contract ViewPure {
    uint public x = 1;
    function addX(uint y ) public view returns(uint) {
        return x+y;

        // x = x+ 4;    -- getting error

    }
    function AddX(uint z) public pure returns(uint){
        // uint d = x+z;  - error here 
        uint d = z + 5;
        return d;
    }

}


// deply DDRESS - 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4 this account store the byte code of this contrsact
// CALL THE FUNCTION FROM - 0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7 THIS ADDRESS 
