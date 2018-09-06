pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     // unsigned integer
                                    // private - 다른 언어와 다르게 타입 뒤에 위치
    
    function plus() public payable {    // public : 누구나 접근 가능
                                        // payable : payable 선언되어야 이더 입금이 가능하다
        balance += msg.value;
    }

    function minus(uint amount) public {
        balance -= amount;
        msg.sender.send(amount);        // send 는 deplicate. transfer
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}