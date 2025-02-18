// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./retailer.sol";

contract customer is retailer
{
 struct Customer{
    string CustomerName;
    address CustomerID;
    bool isCustomer;
    string usertype;
 }
 mapping(address=>Customer) cusdetails;
  modifier  isCustomer(address uniqueID) {
        require(cusdetails[uniqueID].isCustomer==true,"Not a Customer");
        _;
    }
 function  registercustomer( 
    string memory  _custName,
    address  _cusID) public  
     { //require(uniqueIDS[_cusID]==getCustomerID(address(0)),"Already occupied");
     require(exists[_cusID]==false,"Already occupied");
        cusdetails[_cusID]=Customer({
            CustomerName:_custName,
            CustomerID:_cusID,
            isCustomer:true,
            usertype:"Customer"
            });

     }
 
    
}