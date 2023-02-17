
# SSAFY CHAT


## Team BlueBerryPie


![Untitled](DOCS/WhatIsSSAFYCHAT.png)

---

## SSAFY CHAT 바로가기 : [https://ssafychat.shop/](https://ssafychat.shop/)


## UCC 보러가기 : [UCC!!](https://www.youtube.com/live/SMPDFbruars)


## 프로젝트 진행 기간

2023.01.9(월) ~ 2023.02.17(금) 

SSAFY 8기 2학기 공통프로젝트

## 기획 의도 및 배경

SSAFY에서 제공하는 현직자의 멘토링은 실시간이 아니라 아쉬우셨다면?

좀 더 다양한 회사의 현직 선배님들로부터 멘토링을 받고싶으셨다면?

학교 등 외부에서 제공하는 취업 멘토링은 SSAFY에 대한 설명부터 해야 해서 번거로웠다면?

.

.

.

오늘도 취업 준비에 매진 중인 모든 SSAFY 교육생 여러분,

SSAFY출신 후배와 일하고 싶은 SSAFY출신 현직 여러분,

여러분을 위한 서비스가 바로 여기에 있습니다.

쉽고 간편한 매칭 방식으로 원하는 기업, 직무의 선배와 

원하는 시간에 만나 진솔한 대화를 나눌 수 있어요.

오직 SSAFY人만을 위한 1:1 맞춤 취업 멘토링 서비스,

지금 시작해보세요.

## 주요 기능

- 1:1 멘토링
    - 멘티가 원하는 회사와 직무를 선택한 후 멘토링을 신청합니다.
    - 멘토는 가능한 멘토링을 수락합니다.
    - 화상 미팅을 통해 멘토링을 진행합니다.
    - 멘토링 중에 채팅을 통해 자료를 주고 받을 수 있습니다.
    - 양질의 멘토링이 취업 준비에 힘이 될 거에요.
- 롤링페이퍼
    - 멘티는 멘토링 종료 후 감사한 마음을 후기에 남깁니다.
    - 멘토는 멘토링 후 멘티가 남긴 후기를 롤링페이퍼 형식으로 모아 볼 수 있습니다.
    - 멘토는 원하는 글을 원하는 위치에 배치할 수 있습니다.
    - 나만의 롤링페이퍼를 예쁘게 꾸며 보아요!
- 레벨업
    - 멘티는 멘토링 종료 후 평점을 남길 수 있습니다.
    - 멘토는 평점을 통해 레벨을 올릴 수 있습니다.
    - 자주, 성심껏 멘토링을 진행하면 더 빨리 레벨업을 할 수 있습니다!
- 일정 확인
    - 사용자는 마이페이지에서 예정된 멘토링과 확정된 멘토링 목록을 볼 수 있습니다.
    - 어떤 멘토링을 진행했는지 복기하고, 예정된 멘토링을 잊지 않도록 도와줄 거예요.

## 💡주목 포인트

- 오픈소스를 활용하지 않고 직접 구현한 WebRTC
- 실시간 1:1 화상 미팅 및 실시간 채팅 기능 직접 구현
- 6인의 Back-End 포지션이 모여서 만든 것이라고는 믿어지지 않을 만큼 탄탄한 퀄리티의 사이트 UI/UX 디자인
- 그 어떤 외부 라이브러리도 쓰지 않고 순수하게 CSS와 TypeScript만을 활용해 와이어프레임 그대로 구현한 Front-End 코드
- 백엔드 친화적 구조로 짠 React 코드
- 최근 주목받는 신기술들을(JPA, MongoDB, Redis, React, TypeScript) 과감히 도입

## 주요 기술

**Backend - Spring, node.js**

- IntelliJ IDE 2022.3.1
- SpringBoot Gradle 2.7.5
- Spring Data JPA
- Spring Security
- JWT
- Lombok
- Redis 3.0.504
- MySQL 8.0.30
- MongoDB 6.0.4
- Postman
- Swagger 3.0.0
- node v18.13.0

**Frontend - React, TypeScript**

- Visual Studio Code IDE
- React 18.0.2
- React-Dom 18.0.2
- Redux 8.0.5
- Socket.io-Client 4.5.4
- TypeScript 4.9.4
- node v18.13.0

**CI/CD**

- AWS EC2
- Jenkins
- NGINX
- Docker
- SSL (certbot)

## 프로젝트 파일 구조

```
S08P12A604/
├── backend
│   ├── gradle
│   │   └── wrapper
│   └── src
│       ├── main
│       │   ├── java
│       │   │   └── com
│       │   │       └── ssafychat
│       │   │           ├── domain
│       │   │           │   ├── chat
│       │   │           │   ├── member
│       │   │           │   │   ├── controller
│       │   │           │   │   ├── dto
│       │   │           │   │   ├── exception
│       │   │           │   │   ├── model
│       │   │           │   │   ├── repository
│       │   │           │   │   └── service
│       │   │           │   ├── mentoring
│       │   │           │   │   ├── controller
│       │   │           │   │   ├── dto
│       │   │           │   │   ├── exception
│       │   │           │   │   ├── model
│       │   │           │   │   ├── repository
│       │   │           │   │   └── service
│       │   │           │   └── webRTC
│       │   │           └── global
│       │   │               ├── config
│       │   │               ├── jwt
│       │   │               └── util
│       │   └── resources
│       └── test
│           └── java
│               └── com
│                   └── ssafychat
├── backend_chatting
│   ├── mongoose
│   │   └── schemas
│   └── src
├── data
│   └── nginx
├── db
│   ├── MYSQL
│   │   └── ERD
│   └── mongodb
│       └── docker-entrypoint-initdb.d
├── front
│   ├── public
│   │   └── img
│   └── src
│       ├── api
│       ├── assets
│       ├── components
│       │   ├── applying
│       │   ├── chat
│       │   ├── common
│       │   ├── meeting
│       │   ├── mentoring
│       │   ├── modal
│       │   ├── rollingpaper
│       │   └── user
│       ├── config
│       ├── constants
│       ├── container
│       ├── context
│       ├── hooks
│       ├── layout
│       ├── pages
│       ├── services
│       ├── store
│       ├── styles
│       │   ├── components
│       │   │   ├── applying
│       │   │   ├── chat
│       │   │   ├── common
│       │   │   ├── mentoring
│       │   │   ├── modal
│       │   │   ├── rollingpaper
│       │   │   └── user
│       │   ├── container
│       │   ├── pages
│       │   └── widget
│       ├── utils
│       │   └── ts
│       └── widget
└── jenkins
```

## 협업 툴

- GitLab
- Notion
- Gether Town
- JIRA
- Jamboard
- MatterMost
- Webex
- Flip


## 협업 환경

- Gitlab
    - 코드의 버전을 관리
- JIRA
    - 매주 Sprint 진행
    - 업무마다 Story Point를 부여하고 주당 40point씩 수행
- 회의
    - 아침마다 스크럼 회의 진행
    - 전날 한 일과 당일 할 일 브리핑
    - 서로 담당 업무와 진행 상황을 알아 문제 발생 시 빠르게 대처할 수 있다.
- Notion
    - 회의록을 기록하여 보관
    - 컨설턴트님과 미팅 후 피드백 내용 기록
    - 컨벤션 정리
    - 와이어프레임, ERD, API 명세서 등 모두가 공유해야 하는 문서 관리
    

## 컨벤션

### **Git**

- 커밋 분류 규칙
    - **************************************************Init -************************************************** 프로젝트 시작
    - **Feat** - 새로운 기능 추가
    - **Fix** - 버그 수정
    - **Build** - 빌드 관련 파일 수정
    - **Ci** - CI관련 설정 수정
    - **Docs** - 문서 (문서 추가, 수정, 삭제)
    - **Style** - 스타일 (코드 형식, 폴더 이름, 세미콜론 추가: 비즈니스 로직에 변경 없는 경우)
    - **Refactor** - 코드 리팩토링
    - **Test** - 테스트 (테스트 코드 추가, 수정, 삭제: 비즈니스 로직에 변경 없는 경우)
    - **Chore** - 기타 변경사항 (빌드 스크립트 수정 등)
- 커밋 규칙
    - 메시지 규칙
        - [분류] 기능 : 상세 설명
        - ex) [Feat] 로그인 : User 정보를 서버에서 받는  Rest API 추가
        - 무조건 명사형으로 마무리 ex) 작성, 추가 등
    - 커밋 시기
        - 개인이 알아서
        - 오후 스크럼 때 모두 커밋하고 퇴근하기

### Jira

- Epic
    - 기획, 학습, BE, FE
- Story
    - [에픽 이름] 스토리 이름 : 세부 기능 (띄어쓰기 엄수)
    - ex) [BE] API 개발 : 로그인 CRUD
    - ex) [기획] 와이어 프레임 : 메인 화면 구성
    - ex) [학습] FE  : 리액트 화면 구현

### FE

- Component 네이밍
    - 대문자로 시작하는 이름
    - ex) Header.ts
- Page 네이밍
    - 파스칼 케이스로 페이지이름 + Page 사용
    - ex) MainPage.ts
- CSS 네이밍
    - 파일이름
        - 소문자
        - 합성어일 시에 케밥 케이스
    - 컴포넌트와 페이지 분리해서 생성
    - ex) main-page.css
    - class name, id
    
    ```jsx
    function Banner(){
        return (
        <div className="banner_main">
            
        </div>
        )
    }
    
    export default Banner;
    ```
    
    - 이벤트 함수의 경우만 () ⇒ 사용
    
    ```jsx
    function Counter() {
      const onIncrease = () => {
        console.log('+1')
      }
      const onDecrease = () => {
        console.log('-1');
      }
      return (
        <div>
          <h1>0</h1>
          <button onClick={onIncrease}>+1</button>
          <button onClick={onDecrease}>-1</button>
        </div>
      );
    }
    ```
    
- 태그 닫는 형식
    - 무조건 시작 종료 태그 모두 선언하기
    - ex) <Header></Header>

### BE

- 네이밍
    - 카멜 케이스
    - 줄임말 지양 ex) cnt (X) count (O)

## 팀원 역할 분배

FE : 김도원, 김태현, 조원재

BE : 박정희, 백체은, 신희수

CI/CD : 박정희

## 프로젝트 산출물

- [요구 사항 정의서](DOCS/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EC%A0%95%EC%9D%98%EC%84%9C/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD_%EC%A0%95%EC%9D%98%EC%84%9C__PRD_.md)
- [아키텍처](DOCS/%EC%95%84%ED%82%A4%ED%85%8D%EC%B3%90/%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98.md)
- [와이어프레임](DOCS/%EC%99%80%EC%9D%B4%EC%96%B4%ED%94%84%EB%A0%88%EC%9E%84/%EC%99%80%EC%9D%B4%EC%96%B4_%ED%94%84%EB%A0%88%EC%9E%84.md)
- [API](DOCS/API%20%EB%AA%85%EC%84%B8%EC%84%9C/API%20%EB%AA%85%EC%84%B8%EC%84%9C.md)
- [ERD](DOCS/ERD/ERD.md)

## 프로젝트 결과물

- [포팅메뉴얼](./exec)
- [최종발표자료](/DOCS/%EC%B5%9C%EC%A2%85%20%EB%B0%9C%ED%91%9C%20%EC%9E%90%EB%A3%8C/SSAFYCHAT_finalPT_Team_BlueBerryPie.pdf)
