// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Lottery{
    address public manager;
    address payable [] public participants;

    constructor(){
        manager = msg.sender;
    }

    function recieve() external payable {
        require(msg.value == 1);
        participants.push(payable (msg.sender));
    }

    function getBalance() public view returns(uint256)
    {
        require(msg.sender == manager);
        return address(this).balance;
    }
    
}
