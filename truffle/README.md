# Truffle 명령어 모음

## 트러플 환경설정 및 컴파일

```
// Truffle 폴더 생성
mkdir Truffle

// Truffle 폴더로 이동
cd Truffle

// 프로젝트 초기화
truffle init

// Visual Studio Code 실행
code .

// 트러플 코드 생성
truffle develop

// 별도 CMD 창에서 실행
// 로그창 오픈
truffle develop --log

// 배포
migrate

// 배포 (다시)
migrate

// 강제 배포
// --compile-all : 모든 소스코드 강제 재컴파일
// --reset : migrations 내의 .sol 파일 모두 실행
migrate --compile-all --reset
```

## Truffle Console
```
// web3 사용 가능한 명령어 모두 표시
web3

// web3.eth 하위 명령어 모두 표시
web3.eth

// 지갑 List 가져오기
web3.eth.accounts

// 지갑 잔액 확인
web3.eth.getBalance(web3.eth.accounts[0])

// 지갑 잔액을 ether 단위로 표시
web3.fromWei(web3.eth.getBalance(web3.eth.accounts[0], "ether"))

// MyName 컨트랙을 "app" 전역 변수로 설정
MyName.deployed().then(function(instance) { app = instance; })

// 두번째 지갑 잔액 보기
web3.fromWei(web3.eth.getBalance(web3.eth.accounts[1], "ether"))

// setMyName 셋팅 + 가스비 지불은 2번째 지갑에서
app.setMyName("Kim", {from: web3.eth.accounts[1]})

// 두번째 지갑 잔액 보기
web3.fromWei(web3.eth.getBalance(web3.eth.accounts[1], "ether"))

// getMyName 호출
app.getMyName()
```



