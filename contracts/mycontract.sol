// SPDX-License-Identifier: UNLICENSED

// DO NOT MODIFY BELOW THIS
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Splitwise {
    // Need to track: creditor, debtor, amt

    
    // Initialize the balances. Why shouldn't this be done in the constructor?
    // If it's easy to loop over balances in js, then this can just become mapping (address => mapping (address => uint256)) ledger;
    // you would index using ledger[debtor[creditor]]
    struct User {
        uint128 total_bal;
        mapping (address => uint256) balances;
    }
    mapping (address => User) ledger;

    lookup(address debtor, address creditor) public view returns (uint32 ret) {
        User debtor_obj = ledger[debtor];
        uint ret = debtor_obj.balances[creditor];
        return ret;
    }

    add_IOU(address creditor, uint32 amount, ...) {
        require(msg.sender == creditor);

        // Do this in js
        // If there's potential for a cycle to form, resolve it when adding the UTXO
    }

}
