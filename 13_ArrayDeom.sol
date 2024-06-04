//SPDX-License-Identifier:MIT
pragma solidity ^0.8.6;

contract ArrayDemo {
    uint[4] public fixedNums;
    uint[] public nums = [5,6,7];

    function getValues() public view returns(uint[] memory){
        return nums;
    }
    function getLength() public view returns (uint) {
        return nums.length;
    }
    function addNumber(uint num) public {
        nums.push(num);
        // add the elemennt at the end 
    }

    function removeNumber() public {
        nums.pop();
    }
    function removeAtIndex(uint _index) public {
        delete  nums[_index];
        // i delete thteindex 2 , value of index -2 gone but '0' are still there 
        // array is stack , so if we remmove we need to re-manage the index that is very havy computational 
        // and it will takr large amount of GAS cost
    }
    function deleteAndShift() public {
        uint swapIndex = 0;

        for (uint i = 0; i < nums.length; i++) {
            if (nums[i] != 0) {
                nums[swapIndex] = nums[i];
                swapIndex++;
            }
        }
    }

// asigmnet shif all the element to left side after delet the index.

    function getValues1() public view returns(uint[4] memory){
        return fixedNums;
        // uint256[4]: 0,0,0,0 if we not assigned any value in array - 
    }
}