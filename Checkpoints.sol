// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./math/Math.sol";
import "./math/SafeCast.sol";

library Checkpoints {
    struct Checkpoint {
        uint32 _blockNumber;
        uint224 _value;
    }

    struct History {
        Checkpoint[] _checkpoints;
    }

    /**
     * @dev Returns the value in the latest checkpoint, or zero if there is no checkpoints.
     */
    function latest(History storage self) internal view returns (uint256) {
        uint256 pos = self._checkpoints.length;
        return pos == 0 ? 0 : self._checkpoints[pos-1]._value;
    }

    function getAtBlock(History storage self, uint256 blockNumber) internal view returns (uint256) {
        require(blockNumber < block.number, "Checkpoints: block not yet mined");

        
    }
    
}