// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract ArrayRemove {
    uint[] public items;

    constructor(uint[] memory initialItems) {
        items = initialItems;
    }

    
    // Function to delete an item from the array without leaving gaps
    function deleteItem(uint index) public {
        require(index < items.length, "Index out of bounds");

        // Move the last element to the index of the item to be deleted
        items[index] = items[items.length - 1];

        // Remove the last element (now a duplicate)
        items.pop();
    }

    // Function to get the current state of the array
    function getItems() public view returns (uint[] memory) {
        return items;
    }
}