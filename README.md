#batch_SRV-001
- SRV-001는 SNMP 프로토콜을 사용하는 서버의 Comminity String 설정에 관한 취약점이다.

## SNMP
- SNMP(Simple Network Management Protocol)는 컴퓨터 네트워크 장비를 모니터링 하는 프로토콜이다.

## 취약점
- SNMP 프로토콜의 Comminity String은 기본적으로 "public" or "private"로 기본설정 되어 있어 그대로 사용한다면 공격자가 쉽게 접근을 할 수 있다.

## 취약점 검사 실험 및 실험환경
- OS : Windows Server 2016
- batch file
- service : SNMP (UDP : 161)

## 설정 및 실험
- SNMP install <br>
  <img width="784" alt="1" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/dbe62acd-de53-4222-a90e-754cf0036f0c">

- SNMP Comunity String settings <br>
<img width="890" alt="2" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/107b413a-37bd-4241-9169-131a35f624d5">

- SNMP port is opening (netstat -a) <br>
  <img width="600" alt="3" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/60345b06-c8ba-4a1b-8bc0-61fd27e90c79">

- Run batch file in cmd with administrator privileges <br>
<img width="976" alt="4" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/471eac03-ba8f-459b-9257-e3d68b80f63d">

- Complete <br>
  <img width="980" alt="5" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/31ecb999-f52a-458d-b9b1-334d40542e85">

- Created Result TEXT files <br>
<img width="88" alt="스크린샷 2023-07-29 오전 12 51 38" src="https://github.com/hanmin0512/batch_SRV-001/assets/37041208/2b2c8e07-e2bf-417b-9541-338dc1463f75">



