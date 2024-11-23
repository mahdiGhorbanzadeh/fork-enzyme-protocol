

    // SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "forge-std/Script.sol";
import "forge-std/console.sol";


interface IComptroller {
   
    function callOnExtension(address _extension, uint256 _actionId, bytes calldata _callArgs) external;

}

contract Trades is Script {

    address public constant comptroller = 0x83e434872C1b57e91F89a8782cA1a432Da840b7f;


    function run() external {
        
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        
        vm.startBroadcast(deployerPrivateKey);

        IComptroller comptrollerI = IComptroller(comptroller);
   
        comptrollerI.callOnExtension(0x369373dE3A389047aD7e7846470Eb8324fc3Fe8E,0,hex"00000000000000000000000059699748f4425724d17Fe9b4dfB69379c659eD4b03e38a2b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000600000000000000000000000000000000000000000000000000000000000000160000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000048C273950000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000200000000000000000000000082aF49447D8a07e3bd95BD0d56f35241523fBab1000000000000000000000000fd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb900000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000bb8");

        vm.stopBroadcast();

    }
}