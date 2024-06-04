//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

library removeElemntFromArray{
    // library don't use state variables
    // storing part has been done by the sc in this case we are using storage
    function remove(uint[] storage arr, uint index) public {
        require(arr.length >0, "Can't remove from empty array ");
        arr[index] = arr[arr.length -  1];
        arr.pop();
    }

  /*  function () {

    }

    function () {

    }*/
}

contract testArray {
    uint[] public arr;
    using removeElemntFromArray for uint[];
    function testArrayRemobval() public returns(uint[] memory) {
        for(uint i =0; i < 4; i++) {
            arr.push(i);
        }
        // return arr;
        arr.remove(1);

        return arr;
    }


}