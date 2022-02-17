// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";



contract mymark 
{
    mapping (address => uint256) public mapmark;

    function getmoney() public payable 
    {
        uint256 minusd = 50 * 10 ** 18;
        require (checkusd(msg.value) >= minusd, "can't do with that money");
        mapmark[msg.sender] += msg.value;
    }



    function getver() public view returns(uint256)
    {
        AggregatorV3Interface varmark = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
        return varmark.version();
    }

    function getpricval() public view returns (uint256)
    {
        AggregatorV3Interface varmark = AggregatorV3Interface(0x8A753747A1Fa494EC906cE90E9f37563A8AF630e);
       (,int256 answer, , ,) = varmark.latestRoundData();
        return uint256(answer * 100000000);
      
    }
    
    function checkusd(uint256 eath) public view returns(uint256)
    {
        uint256 ethpri = getpricval();
        uint256 ethusd = (ethpri * eath) ;// 1000000000000000000;
        return ethusd;
    }

}
