//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


contract FallbackRecieve {
  /*In order to receive Ether transfer the contract should have either 'receive' or payable 'fallback' function*/

    // instead of cerating a function we can just create a function with name of recieve 
    string public called = "";
    uint public amount = 0;
    bytes public data;

    receive() external payable { 
        called = "recieve";
        amount = msg.value;
        // data = msg.data;   -- msg.data is not allow in reciee function 
    }

    fallback() external payable {//called whne no onther function is matching
        called = "fallback";
        amount = msg.value;
        data = msg.data; 
    }
}
