pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     // unsigned integer
                                    // private - 다른 언어와 다르게 타입 뒤에 위치
    
    function plus(uint amount) public { // public : 누구나 접근 가능
        balance += amount;
    }

    function minus(uint amount) public {
        balance -= amount;
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}