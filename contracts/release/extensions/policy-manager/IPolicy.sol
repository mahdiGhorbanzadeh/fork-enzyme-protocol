// SPDX-License-Identifier: GPL-3.0

/*
    This file is part of the Enzyme Protocol.

    (c) Enzyme Foundation <security@enzyme.finance>

    For the full license information, please view the LICENSE
    file that was distributed with this source code.
*/

pragma solidity >=0.6.0 <0.9.0;

import {IPolicyManager} from "./IPolicyManager.sol";

/// @title Policy Interface
/// @author Enzyme Foundation <security@enzyme.finance>
interface IPolicy {
    function activateForFund(address _comptrollerProxy) external;

    function addFundSettings(address _comptrollerProxy, bytes calldata _encodedSettings) external;

    function canDisable() external pure returns (bool canDisable_);

    function identifier() external pure returns (string memory identifier_);

    function implementedHooks() external pure returns (IPolicyManager.PolicyHook[] memory implementedHooks_);

    function updateFundSettings(address _comptrollerProxy, bytes calldata _encodedSettings) external;

    function validateRule(address _comptrollerProxy, IPolicyManager.PolicyHook _hook, bytes calldata _encodedArgs)
        external
        returns (bool isValid_);
}
