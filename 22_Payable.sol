//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

/* Payable is a modiofier */

contract PayableImplimenattion {
    // Payable address can send and recieve Ether - 
    address payable public owner; // person who deployed the contract  
    
    // payable contructor can recieve ether 
    constructor() payable  {
        // who will be deploy the contract will be the owner , and here we are making it payable.
        owner = payable(msg.sender);

    }
    function deposit() public payable {
        // we can make it compltety blank 
        // this function can recive fther ,  blank function will only allow to recieve ether 
    }

    function nonPayable() public {
        // its can't accept there if we are making it blank this normal funciton ...
        /*Note: The called function should be payable if you send value and the value you send should be less than your current balance.
You may want to cautiously increase the gas limit if the transaction went out of gas.*/
    }

    function withdraw() public {
        uint amount = address(this).balance; // point to the balance that stored in current smart contract

        /*withdraw money from smart contract to owner addresss */
        (bool success,) = owner.call{value:amount}("amount wiuthdrawn from smart contract");

        require(success, "Failled to recieve Ether");
    }

    function transfer(address payable _to, uint _amount) public {
        (bool success,) = _to.call{value:_amount*(10**18)}("Ether Transfered");
        require(success, "Falled to send the ether to address");

    }
    
}

/*
Parameter of the transfer 
0x0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc400000000000000000000000000000000000000000000000000000000000f4240

whet is this  - way to sent to the EVM (data - to , from, and amount)

call data - 
0xa9059cbb0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc400000000000000000000000000000000000000000000000000000000000f4240
*/