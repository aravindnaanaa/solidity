// SPDX-License-Identifier: MIT
pragma solidity >=0.6 <0.9;

contract simple 
{
    int32 num = 55;
    bool ty = false;
    bytes32 a = 'nana';
    address ad = 0x224b727E30F866003fD81ED2d932866A88E0c9FE;
    string st = "naanaa";

}


contract store
{
    uint256 private num;
    //uint256 public nuu;
    uint256 nuu;
    struct tagnam
    {
        uint256 numb;
        address adrs;
        string usrname;
    }
    
   // tagnam public jusr = tagnam({numb: 11, adrs: 0x224b727E30F866003fD81ED2d932866A88E0c9FE, usrname: 'naanaa' });
    tagnam[] public just_user ;
    mapping(uint256=>string) public vicwe;

    

    function storenum(uint256 gg) public
    {
        num = gg;
        nuu = num;
    }
/*
    //view,pure only read mode pure for math also 
    function justc() public view returns(uint256)
    {
        return nuu;
    }
*/
    function add_a_num(uint256 sec_no) public view returns(uint256)
    {
        uint256 one = sec_no + nuu; 
        return one;
    }

    
    function inse( string memory _name , uint256 _num, address _addrs) public // returns(string memory)
    {  
        just_user.push(tagnam({numb: _num, adrs: _addrs, usrname: _name }));
        //mapping(uint256=>string) public vicwe;
        vicwe[_num] = _name;
        //return vicwe[_num];
        /*
        tagnam storage one ;
        just_user.push(tagnam({numb: 14, adrs: 0x224b727E30F866003fD81ED2d932866A88E0c9FE, usrname: 'kayal'}));
        one = just_user[1];
        
        tagnam memory  just_user;
        
        just_user.numb = 223;
        just_user.adrs = 0x224b727E30F866003fD81ED2d932866A88E0c9FE;
       */
    }
/*
    function seee(uint256 _jnumb) public view returns(uint256)
    {
        return vicwe[_jnum];
    }
*/

    

}
