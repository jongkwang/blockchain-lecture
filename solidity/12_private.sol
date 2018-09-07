pragma solidity ^0.4.24;

contract MyName {
    
    string myName; // 글로벌 변수

    // 함수(getter)
    function getMyName() constant private returns(string) {
        return myName;
    }

    // 함수(setter)
    function setMyName(string newMyName) public {
        getMyName();
    }
}

contract CallContract is MyName {
    function callGetMyName() public {
        getMyName();
    }
}

contract CallContract2 {
    MyName myName;
    function callGetMyName() public {
        myName.getMyName();
    }
}