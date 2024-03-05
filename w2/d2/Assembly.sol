// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Assembly {
    /// @dev This function returns the amount of ether that was passed to it.
    function getEthAmount() external payable returns (uint256 amount) {
        assembly {
            amount := callvalue()
        }
    }
}