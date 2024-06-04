//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;


contract DataLocations {
    string AccountName = "Ineuron"; // state variable. -- by default it's a storage 
        string newVariable2 = "hello 2";
        string newVariable3 = "hello 3";
        string newVariable4 = "hello 4";
        string newVariable5 = "hello 5";
    // function displayAccName() public view returns(string storage){
    function displayAccName() public view returns(string memory){
        string storage newVariable1;
        // string storage newVariable2; 
        // string storage newVariable3; 
        // string storage newVariable4;
        // string storage newVariable5;
   
        return AccountName;

    }

    function resulCalldatat(string calldata _a) public pure returns(string calldata) {
        return _a;
    }

    function resultMemory(string memory _a) public pure returns(string memory) {
        return _a;
    }
        function resulCalldatatModification(string calldata _a) public pure returns(string calldata) {
            // _a = "Hello";  // getting error - bcs its not modifiable 

        return _a;
    }

    function resultMemoryModification(string memory _a) public pure returns(string memory) {
        _a = "Hello from Memory";
        return _a;
    }

}
/*
5 state variables - storage + 5 local variable storage = 342738
1 state variable - storage + 5 local variable storage = 234583
1 state variable - storage + 5 local variable memory = 2344009
can we use storage inside a function ? -- we could use (----- function like creating a user ----)
// gas for calldata function - 
*/