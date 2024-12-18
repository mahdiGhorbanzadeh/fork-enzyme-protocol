// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "forge-std/Script.sol";
import "./../../contracts/release/infrastructure/price-feeds/derivatives/feeds/PeggedDerivativesPriceFeed.sol";
import "forge-std/console.sol";


contract DeployPeggedDerivativesPriceFeed is Script {

    address public constant fundDeployer = 0x965851be9F05cb5Af2583a1D2286164934fe7DdA;


    function run() external returns (address) {
        
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(deployerPrivateKey);

        PeggedDerivativesPriceFeed peggedDerivativesPriceFeed = new PeggedDerivativesPriceFeed(
            fundDeployer
        );

        vm.stopBroadcast();

        return (address(peggedDerivativesPriceFeed));

    }
}
