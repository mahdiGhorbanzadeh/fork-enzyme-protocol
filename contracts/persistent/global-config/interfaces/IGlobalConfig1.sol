// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.

    (c) Enzyme Foundation <security@enzyme.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

/// @title IGlobalConfig1 Interface
/// @author Enzyme Foundation <security@enzyme.finance>
/// @dev Each interface should inherit the previous interface,
/// e.g., `IGlobalConfig2 is IGlobalConfig1`
interface IGlobalConfig1 {
    function isValidRedeemSharesCall(
        address _vaultProxy,
        address _recipientToValidate,
        uint256 _sharesAmountToValidate,
        address _redeemContract,
        bytes4 _redeemSelector,
        bytes calldata _redeemData
    ) external view returns (bool isValid_);
}
