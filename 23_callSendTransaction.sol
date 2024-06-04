//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract SendingFund {
    function sendEtherTransfer(address payable _to) public payable {
        _to.transfer(msg.value); // 2300 gas limit 
    }

    function SendEnterSend(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require (sent, "Failled during send the Ether"); //2300 gas limit
    } 

    function SendEtherCall(address payable _to) public payable {
        (bool sent, ) = _to.call{gas:100000, value:msg.value}("");

        require(sent, "falied to send the ether");
    }
}