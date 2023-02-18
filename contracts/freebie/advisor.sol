pragma solidity ^0.8.0;

contract Advisor{

    address own;
    constructor(){
        own = msg.sender;
    }

    function owner() external returns(address){return own;}

    function delegatedTransferERC20(address token, address to, uint256 amount) external{}
}