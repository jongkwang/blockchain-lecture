pragma solidity ^0.4.24;

contract MyName {
    
    string external myName; // 글로벌 변수

    // 함수(getter)
    function getMyName() constant external returns(string) {
        return myName;
    }

    // 함수(setter)
    function setMyName(string newMyName) public {
        getMyName();
    }
}

contract CallContract {
    function callGetMyName() public {
        getMyName();
    }
}