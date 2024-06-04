//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract Function {
    // fucntion to return multiple value
    function returnMultiple() public pure returns(uint, bool, uint) {
        return (1, true , 10 );
        // return (1, 10 , true );  // get tje error fi we modifed the order
    }
    function returnName() public pure returns(uint x, bool b, int y) {
        return (1, true, -10);
    }

    function AssignValues() public pure returns(uint x, bool b, int y) {
        x = 20;
        b = false;
        y = -333;

        return(x,b,y);
    }

    function AssignValueswithDefault() public pure returns(uint x, bool b, int y) {
     
        return(x,b,y);
    }
    function destrcuturing() public pure returns(uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMultiple();
        i=300;
        (uint x, ,uint y)   = (10, 15, 20);
        // 10 -x, 15 will not use, 20-y
        return (i,b,j,x,y);
    }
  


}

contract SecondFcuntion {
     function SecondFunctionContract(uint x, uint y, uint z, address a, bool b, string memory c) public pure returns (uint) {

     }

     function callFunction() external view returns(uint) {
        return SecondFunctionContract(1, 2, 3, msg.sender, false, "Abhishek");
     }

     function callFuncitonWithKeyVal() external pure returns(uint) {
        return SecondFunctionContract({a: address(0), b: true, c:"hello", x:1, y:2, z:3});
     }
}