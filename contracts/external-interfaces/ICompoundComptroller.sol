// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.
    (c) Enzyme Foundation <security@enzyme.finance>
    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

/// @title ICompoundComptroller Interface
/// @author Enzyme Foundation <security@enzyme.finance>
/// @notice Minimal interface for interactions with Compound Comptroller
interface ICompoundComptroller {
    function claimComp(address) external;

    function claimComp(address, address[] memory) external;

    function enterMarkets(address[] calldata) external returns (uint256[] memory);

    function exitMarket(address) external returns (uint256);
}
