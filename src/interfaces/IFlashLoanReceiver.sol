// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.20;

//@audit unused import
// it is bad practice to edit live code for test/mock, we must remove the import from 'MockFlashReciver.sol'
import { IThunderLoan } from "./IThunderLoan.sol";

/**
 * @dev Inspired by Aave:
 * https://github.com/aave/aave-v3-core/blob/master/contracts/flashloan/interfaces/IFlashLoanReceiver.sol
 */
interface IFlashLoanReceiver {
    //q is the token the token that is borrowed?
    //@audit  where the  natspec??
    // q amount is the  amount  of tokens?
    function executeOperation(
        address token,
        uint256 amount,
        uint256 fee,
        address initiator,
        bytes calldata params
    )
        external
        returns (bool);
}
