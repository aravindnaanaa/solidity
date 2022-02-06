// SPDX-License-Identifier: MIT

pragma solidity >=0.6 <0.9;

import "./one.sol";

contract mark // is store 
{
    store [] public onemark;

    function mymarkwm() public
    {
        store mymark = new store();
        onemark.push(mymark);
    }

    function gname(string memory _name , uint256 _num, address _addrs) public 
    {
        store(address(onemark[0])).inse(_name,_num,_addrs);
        
    }
    function gett(uint256 no) public view returns(string memory)
    {
        return store(address(onemark[0])).vicwe(no);

    }
    
}
