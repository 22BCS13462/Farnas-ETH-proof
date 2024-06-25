// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {
    // Public Variables Are Here
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;
    // Mapping Variables Here
    mapping(address => uint) public balances;
    // Mint Function
    function mint (address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }
    // Burn Function
    function burn (address _address, uint _value) public {
        if (balances[_address] >= _value){
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
}