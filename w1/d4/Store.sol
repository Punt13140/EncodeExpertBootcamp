// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {
    struct payments {
        uint256 initialAmount; 
        uint256 finalAmount;
        uint256 amount;
        address sender;
        bool checked;
        bool valid;
        uint8 paymentType;
        address receiver;
    }

    uint256 public number; // slot 0
    mapping (address=>uint256) balances; // slot 1

    // -- slot 2
    address admin;
    bool flag1;
    bool flag2;
    bool flag3;
    uint8 index;
    // -- end slot 2

    address admin2; // slot 3

    payments[8] topPayments; // ...

    constructor(){

    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}