//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract A {
    function doSomething() public {
        revert();
    }
}

contract B {
    A aAcontract = new A();
    string public status = "Not Availble";
    function go() public {
        status = "success";
        aAcontract.doSomething();
    }
}