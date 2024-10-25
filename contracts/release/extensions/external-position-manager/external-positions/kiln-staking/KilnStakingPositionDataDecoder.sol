// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.
    (c) Enzyme Foundation <security@enzyme.finance>
    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity 0.8.19;

import {IKilnStakingPosition} from "./IKilnStakingPosition.sol";

/// @title KilnStakingPositionDataDecoder Contract
/// @author Enzyme Foundation <security@enzyme.finance>
/// @notice Abstract contract containing data decodings for KilnStakingPosition payloads
abstract contract KilnStakingPositionDataDecoder {
    function __decodeClaimFeesAction(bytes memory _actionArgs)
        internal
        pure
        returns (
            address stakingContractAddress_,
            bytes[] memory publicKeys_,
            IKilnStakingPosition.ClaimFeeTypes claimFeeType
        )
    {
        return abi.decode(_actionArgs, (address, bytes[], IKilnStakingPosition.ClaimFeeTypes));
    }

    /// @dev Helper to decode args used during the Stake action
    function __decodeStakeActionArgs(bytes memory _actionArgs)
        internal
        pure
        returns (address stakingContractAddress_, uint256 validatorAmount_)
    {
        return abi.decode(_actionArgs, (address, uint256));
    }

    /// @dev Helper to decode args used during the Unstake action
    function __decodeUnstakeActionArgs(bytes memory _actionArgs)
        internal
        pure
        returns (address stakingContractAddress_, bytes memory publicKeys_)
    {
        return abi.decode(_actionArgs, (address, bytes));
    }
}
