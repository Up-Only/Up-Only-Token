pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";    

contract UpOnly is ERC20 {
    
    mapping(address => uint256) private _balances;

    
    constructor() ERC20("Up Only", "UPO") {
        _mint(msg.sender, 1000000000000 * 10 ** 18);
    }


    //token burn     
    function burn(uint _burnAmount) external {        
        _burn(msg.sender, _burnAmount);     
    }  
}