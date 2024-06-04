//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


contract CallContract {
    string public Str = "Blockchain";
    // if one ether issend in msg.value then update the string value.
    function UpdateString(string memory _newString) public payable returns(uint , uint){
        uint startGas1  = gasleft();

        require(msg.value == 1 ether);  
        Str = _newString; 
        address payable owner = payable (msg.sender);


        (bool success,) = owner.call{value:msg.value}("");

        require (success, "failure");
        return (startGas1, startGas1 - gasleft());


    } 
}