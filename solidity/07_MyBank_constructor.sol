pragma solidity ^0.4.24;

contract Bank {
    uint private balance = 100;     // unsigned integer
                                    // private - 다른 언어와 다르게 타입 뒤에 위치
    address public myAddress;

    constructor() {                 // 최초 1번만 실행 된다
        myAddress = msg.sender;
    }
    
    function plus() public payable {    // public : 누구나 접근 가능
                                        // payable : payable 선언되어야 이더 입금이 가능하다
        balance += msg.value;
    }

    function minus(uint amount) public {    // public 이므로 누구나 꺼내 갈 수 있다
        if(msg.sender == myAddress && balance >= amount) {
            balance -= amount;
            
            if(!msg.sender.send(amount)) {
                balance += amount;
            }
        }
    }

    function getBalance() constant public returns(uint) {
        return balance;
    }

}