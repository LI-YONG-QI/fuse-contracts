// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {Test, console} from "forge-std/Test.sol";
import {Broadcast} from "../src/Broadcast.sol";

contract FileTest is Test {
    function test_GetContract() external {
        Broadcast.Contract memory c = Broadcast.getContract("Token.s.sol", "Token");
        //assertEq(c.addr, address(0xe7f1725E7734CE288F8367e1Bb143E90bb3F0512));
        console.log("Contract address: ", address(c.addr));
        console.log(c.deployer);
        console.log(c.name);
        console.logBytes32(c.txHash);
        console.log(c.args.length);
        console.log(c.args[0]);
        console.log(c.chainId);
        console.log(c.tiemstamp);
    }

    // function test_GetContractChainId() external {
    //     address contractAddress = Broadcast.getContract("Token.s.sol", "Token", 17000, "run-1730855487");
    //     assertEq(contractAddress, address(0x8d375dE3D5DDde8d8caAaD6a4c31bD291756180b));
    // }

    // function test_exportFile() external {
    //     Broadcast.exportDeployments("deployments/test/", "Token.s.sol", 17000);
    //     Broadcast.exportDeployments("deployments/test/", "Token.s.sol", 31337);
    // }
}
