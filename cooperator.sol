// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./Milkman.sol";

contract cooperator is milkman
{
 struct Cooperator{
    string CooperatorName;
    address CooperatorID;
    bool isCooperator;
    string usertype;
 }
 mapping(address=>Cooperator) copdetails;
  modifier  iscooperator(address uniqueID) {
        require(copdetails[uniqueID].isCooperator==true,"Not a cooperator");
        _;
    }
 function  registercop( 
    string memory  _copName,
    address  _copID) public 
     {  require(exists[_copID]==false,"Already occupied");
        copdetails[ _copID]=Cooperator({
            CooperatorName:_copName,
            CooperatorID:_copID,
            isCooperator:true,
            usertype:"Cooperator"
            });
            exists[_copID]=true;

     }
 
    
   

 
}
