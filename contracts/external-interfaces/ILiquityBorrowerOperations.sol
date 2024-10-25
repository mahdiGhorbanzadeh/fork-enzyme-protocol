// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.

    (c) Enzyme Foundation <security@enzyme.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

/// @title ILiquityBorrowerOperations Interface
/// @author Enzyme Foundation <security@enzyme.finance>
/// @notice Minimal interface for our interactions with LiquityBorrowerOperation contract
interface ILiquityBorrowerOperations {
    function addColl(address, address) external payable;

    function claimCollateral() external;

    function closeTrove() external;

    function openTrove(uint256, uint256, address, address) external payable;

    function repayLUSD(uint256, address, address) external;

    function withdrawColl(uint256, address, address) external;

    function withdrawLUSD(uint256, uint256, address, address) external;
}
