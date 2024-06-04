//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract EventLog{
    // event declaration 

    // upto 3 parameters can be indexed 

    // evens hellp you to filter logs on the blockchain 

    event Log(address indexed sender, string message );
    event Event2();

    function testEventWorking() public{
        emit Log(msg.sender, "Blockcgain evelopment");
        emit Log(msg.sender, "Event Created successfulluy!!!");

        emit Event2();
    }
}

contract AnotherEvent{
    event Log_inAnotherEventContract(address indexed sender, string indexed message, uint indexed id, uint b, uint c );
    event Log_inAnotherEventContractEvent2();

    function testAnotherEventWorking() public{
        emit Log_inAnotherEventContract(msg.sender, "Blockcgain evelopment", 4,6,8);
        emit Log_inAnotherEventContract(msg.sender, "Event Created successfulluy!!!", 4, 6, 8);

        emit Log_inAnotherEventContractEvent2();
    }
}

