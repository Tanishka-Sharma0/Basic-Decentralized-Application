// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract Funder{
    uint public noOfFunders;
    mapping (uint => address)  public funders;
    
       receive() payable external{}

    function transfer() external payable{
        funders[noOfFunders] = msg.sender;
    }

function withdraw(uint WithdrawAmount) external{
    require(WithdrawAmount<= 2 ether, "you cannot withdraw more than 2 ethers");
    payable(msg.sender).transfer(WithdrawAmount);
}

}