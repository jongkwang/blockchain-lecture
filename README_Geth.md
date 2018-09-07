## Geth 과정에 사용되는 명령어들

> 교재의 Code 를 Copy&Paste 할 때 마다
> PDF Reader 에 따라 값이 달라지는 경우 발생 (줄바뀜 및 띄어쓰기 발생)
> 아래 코드를 사용하세요

```
// 폴더 만들고 이동하기
mkdir MyNetwork
cd MyNetwork

// puppeth 통해서 제네시스 블록 셋팅하기
puppeth
// 이후 설정은 교재 참조

// MyNetwork.json 으로 블록 생성하기
geth --datadir . init MyNetwork.json

// Account 생성 및 조회
geth --datadir . account new
geth --datadir . account list

// 비밀번호 파일 생성하기
code password.txt
1234

// 블록체인 시작 파일 생성
code startblockchain.bat
geth --datadir . --networkid 9999 --nodiscover --mine --minerthreads 1 --rpc --rpcport 8545 --rpccorsdomain "*" --rpcapi "eth,web3,personal,net" --nat any --unlock 0 --password ./password.txt

// 블록체인 시작
startblockchain.bat

// Geth Console 배치파일 생성
code startgethconsole.bat
geth attach ipc:\\.\pipe\geth.ipc

// Geth Console 시작
startgethconsole.bat

// Mist 실행 파일 생성
code startmist.bat
"c:\Program Files\Mist\Mist.exe" --ipc \\\\.\\pipe\\geth.ipc

// Mist 실행
startmist.bat
```