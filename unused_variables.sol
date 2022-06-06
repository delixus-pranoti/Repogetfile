//Single transaction overflow
//Post-transaction effect: overflow escapes to publicly-readable storage

pragma solidity ^0.4.19;

contract IntegerOverflowMinimal {

function subtraction(uint256         count ,uint256  input) internal pure returns (uint256)
 {  require(         count  >=  input);
return         count - input;
}
    uint public count = 1;

    function run(uint256 input) public {
        count  = subtraction(        count , input);    }
}
