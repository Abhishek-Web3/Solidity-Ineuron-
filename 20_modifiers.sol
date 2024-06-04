//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Account{
    mapping(address => uint) public balance;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function addBalance(uint _amt) public {
        // only owner should be able to add balance - 
        require(owner == msg.sender, "Only Owner is allowed to add Money");
        // Reason provided by the contract: "Only Owner is allowed to add Money".


        uint a = 4;
        uint b =5;
        uint c = a+b;

        assert(c == 9);



        balance[msg.sender] = _amt;
    }

    function getBalance() public view returns(uint) {
        return balance[msg.sender];
    }


    function transfer(address _to, uint _amt) public {
        /*if(balance[msg.sender] < _amt)
            revert("You don't have enough balance");
            // i got a error in reason provided - 
        */
        require (msg.sender != _to, "Sender and reciever can't not same");
        require(balance[msg.sender] > _amt, "Insufficient Balance");
            // Reason provided by the contract: "Insufficient Balance".
        balance[msg.sender]    -= _amt;
        balance[_to] += _amt;
    }
}