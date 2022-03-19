// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./Address.sol";

abstract contract Multicall {
    function multicall(bytes[] calldata data) external virtual returns (bytes[] memory results){
        
    }
}