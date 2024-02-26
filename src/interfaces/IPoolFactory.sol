// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.20;

//@audit Why are we using tswap? What does that have to do  with  flash loan ?
interface IPoolFactory {
    function getPool(address tokenAddress) external view returns (address);
}
