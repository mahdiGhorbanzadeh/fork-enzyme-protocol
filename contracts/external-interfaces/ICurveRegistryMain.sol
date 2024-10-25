// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.

    (c) Enzyme Foundation <security@enzyme.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

/// @title ICurveRegistryMain interface
/// @author Enzyme Foundation <security@enzyme.finance>
/// @notice Limited interface for the Curve Registry contract at ICurveAddressProvider.get_address(0)
interface ICurveRegistryMain {
    function get_gauges(address) external view returns (address[10] memory, int128[10] memory);

    function get_lp_token(address) external view returns (address);
}
