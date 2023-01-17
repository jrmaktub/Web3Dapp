// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

//ERC20 in this case refers to the standard contract we imported from OpenZeppelin.


contract FCKR is ERC20{
    // Since we are extending the ERC20 contract, we need to initialize the ERC20 contract when we deploy ours. So, as part of our constructor, we also need to call the constructor on the ERC20 contract.
    // Therefore, we are providing _name and _symbol variables to our contract, which we immediately pass on to the ERC20 constructor, thereby initializing the ERC20 smart contract.


    constructor(string memory _name, string memory _symbol)ERC20(_name, _symbol){
        // _mint is an internal function within the ERC20 standard contract, which means that it can only be called by the contract itself. External users cannot call this function.
        // Since you as the developer want to receive some tokens when you deploy this contract, we call the _mint function to mint some tokens to msg.sender.
        _mint(msg.sender, 10 * 10 **18);

    }
}
//deployed at: 0x79F9a47e12b88C7b0913Ea4CDbf7126B97A823A6