// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.

    (c) Enzyme Foundation <security@enzyme.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

/// @title UniswapV2Router2 Interface
/// @author Enzyme Foundation <security@enzyme.finance>
/// @dev Minimal interface for our interactions with Uniswap V2's Router2
interface IUniswapV2Router2 {
    function addLiquidity(address, address, uint256, uint256, uint256, uint256, address, uint256)
        external
        returns (uint256, uint256, uint256);

    function removeLiquidity(address, address, uint256, uint256, uint256, address, uint256)
        external
        returns (uint256, uint256);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256,
        uint256,
        address[] calldata,
        address,
        uint256
    ) external;
}
