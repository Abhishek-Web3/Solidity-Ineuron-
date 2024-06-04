//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


contract Called {
    // eventd use to store the logs 
    event callEvent(address sender , address origin , address from );
    function callThis() public {
        emit callEvent(msg.sender, tx.origin, address(this));

        // msg.snedr - from which adress this ufnciton called / execute
        // tx.origin - origin will be always EOA
        /*EOA - SC1 - SC2 - SC3 -- SC4 we are in the context of SC2.      tx.orogon will be the EOA */ 
    }
}

// calling function from another SC

contract Caller {
    function makeCalls (address _contractAddress) public {
        address(_contractAddress).call(abi.encodeWithSignature("callThis()"));
    }
}