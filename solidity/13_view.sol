pragma solidity ^0.4.24;

contract MyName {
    
    string myName;

    function getMyName() view private returns(string) {
        return myName;
    }

    function setMyName(string newMyName) public {
        getMyName();
    }
}