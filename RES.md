# 2023-07-13 싸피

1. 최빈값 구하기 - enumerate함수

```python
enumerate 함수
● 리스트가 있는 경우 순서와 리스트 값을 전달하는 기능을 가진다.
● 순서가 있는 자료형(list, set, tuple, dictionary, string)을 
입력으로 받아 인덱스 값을 포함하는 enumerate객체를 리턴한다.
● for문과 함께 자주 사용한다.
enumerate()의 ()안에 들어가는 타입을 {}, (), []중에 어떤 것으로 해도 가능

data = enumerate({1,2,3})
for i, value in data:
	print(i, ":", value)
print()

결과값 :
0 : 1
1 : 2
2 : 3

dict1 = {'이름': '한사람', '나이' : 33}
data = enumerate(dict1)
for i, key in data:
	print(i, ":", key, dict1[key])
print()

결과값 :
0 : 이름 한사람
1 : 나이 33

data = enumerate("재미있는 파이썬")
for i, value in data:
	print(i, ":", value)
print()

0 : 재
1 : 미
2 : 있
3 : 는
4 :
5 : 파
6 : 이
7 : 썬
```

```python
def mode_1():
	times_list =
```

1. GIT과 GITHUB

GIT 이란?

—> (분산)버전 관리 프로그램

: 과거 특정 시점으로 돌아가거나, 한번에 여러 버전으로 개발자들이 동시에 작업이 진행 가능하다

GIT 쓰게 된 이유:

● 이전에 있던 모든 버전 관리 프로그램보다 성능이 월등히 빨랐다.

● 대용량 프로젝트를 효율적으로 관리 가능하다

● 커뮤니티 기능, 사용자들이 공개 저장소를 이용해 서로 공유

● GITHUB를 이용한 포트폴리오 작성 가능(잔디심기, 프로젝트 이력 노출)

버전 관리 = 컴퓨터 소프트웨어의 특정 상태 들을 관리하는 것 

● 맨 나중 파일과, 이전 변경 사항만 남긴다.

● 파일 히스토리를 저장하는 도구이다

● 코드의 히스토리를 관리 하는 도구

● 개발 과정 파악 가능

● 이전 버전과의 변경 사항 비교 분석

분산 버전 관리 장점:

● 중앙 집중에 비해 안전함  ex) 카카오 화재

분산 버전 관리 단점:

● 용량 관리가 어려움(동영상 등을 올렸을 경우)

● 이후 병합 시에 충돌하는 상황이 발생함

1. GUI와 CLI

● GUI : 그래픽을 통해 사용자와 컴퓨터가 상호 작용하는 방식 

● CLI : 명령어를 통해 사용자와 컴퓨터가 상호 작용하는 방식

CLI를 왜 사용하는가?

GUI는 CLI에 비해 사용하기 쉽지만 단계가 많고 컴퓨터의 성능을 더 많이 소모한다.

수 많은 서버 / 개발 식스템이 CLI를 통한 조작환경을 제공한다.

CLI의 명령어

● touch : 파일을 생성하는 명령어

● Mkdir : 새 폴더를 생성하는 명령어

● ls : 현재 작업 중인 디렉터리의 폴더/파일 목록을 보여주는 명령어

ls -al : 상세 정보 확인

● cd : 현재 작업 중인 디렉터리를 변경하는 명령어

cd ~ : 홈 디렉터리로 이동

cd ../ : 현재 폴더의 부모 디렉토리로 이동

● start,open : 파일/폴더를 여는 명령어(Window에서는 start를, Mac에서는 open을 사용)

● rm : 파일을 삭제하는 명령어

rm -r: 폴더/디렉토리 삭제 가능 옵션

● cat : 파일 내부에 들어있는 값을 확인 할 수 있음

● *.txt : ?.txt에서 ?인 부분의 중복된 값 삭제

‘*’ : 반복되는 부분 대체 가능한 값

절대 경로

● 루트 디렉터리부터 목적 지점까지 거치는 모든 경로를 전부 작성한 것

● 윈도우 바탕 화면의 절대 경로 - C:/Users/ssafy/Desktop

상대 경로

● 현재 작성하고 있는 디렉터리를 기준으로 계산된 상대적 위치를 작성한 것(생략 가능하다는 뜻)

● 현재 작업하고 있는 디렉터리가 C:/Users일 때 

윈도우 바탕 화면으로의 상대 경로는 ssafy/Desktop

● ./ : 현재 작업하고 있는 폴더

● ../ : 현재 작업하고 있는 폴더의 부모 디렉토리

마크다운

● 텍스트 기반의 가벼운 마크업 언어

● 문서의 구조와 내용을 같이 쉽고 빠르게 적고자 탄생

● 마크업 : 태그를 이용하여 문서의 구조를 나타내는 것

# GIT HUB 문서의 시작과 끝

- [read.me](http://read.me)  파일을 통해 오픈소스의 공식 문서 작성
- 마크 다운을 이용한 블로그 작성

헤딩(Heading)

```markdown
‘#’헤딩 : 문서의 제목을 설정

‘#’ : 한 번 더 쓰면 대 제목

‘##’ : 중 제목(깃 허브 총 6번까지 가능, 3번 권장)

‘—-’ : 줄을 넣을 수 있음 

‘스페이스바’ 4개 쓰면 들여쓰기 가능함
```

```markdown
# 텍스트 꾸미기
**굵게**

*기울이게*

~~취소선~~
```

```markdown
# 코드 블럭
'''python
# include "stdio.h"
print("hello world!");
'''
# 링크와 이미지
[네이버] (https://www.naver.com)
!['링크 오류났을때 나오는 메세지'](https://i.namu.wiki/i/d1A_wD4kuLHmOOFqJdVlOXVt1TWA9NfNt_HA0CS0Y_N0zayUAX8olMuv7odG2FiDLDQZIRBqbPQwBSArXfEJlQ.webp)
```

README.md

- 프로젝트에 대한 설명 문서
- Github 프로젝트에서 가장 먼저 보는 문서
- 일반적으로 소프트웨어와 함께 배포
- 작성 형식은 따로 없으나, 일반적으로 마크다운을 이용해 작성

Repository : 특정 디렉터리를 버전 관리하는 저장서

- git init 명령어로 로컬 저장소를 생성
- .git 디렉터리에 버전 관리에 필요한 모든 것이 들어있음

# Git 기본기

- [README.md](http://README.md) 생성하기
    - 새 폴더를 만들고 [README.md](http://README.md) 파일을 생성해 주세요
    - 이 파일을 버전 관리하며 GIT을 사용해 봅시다.
        - 특정 버전으로 남긴다.

Working Directory, Staging Area, Repository : 커밋은 이 3가지 영역을 바탕으로 동작

Working Directory : 파일을 생성하고 수정하는 영역/ 내가 작업하고 있는 실제 디렉터리

Staging Area :  커밋으로 남기고 싶은, 특정 버전으로 관리하고 싶은 파일이 있는고

Git Staging Area 가 있는 이유

1. 일부분만 커밋하고 싶을 때
: 워킹 디렉터리 골라서 커밋하고 싶을 때
2. "충돌"을 해결할 때
: 협업 과정에서 여러 사람이 파일을 작업하게 되는데...
수정 사항이 겹치는 영역에 대해서.. Staging Area를 통해 충돌을 해소
3. 커밋을 다시 고치고 싶을 때
로그 메시지만 고치는 게 아니라, 파일을 수정해서 다시 커밋(버전을 수정)하고 싶다면
'commit --amend'

Repository : 버전 관리가 되는 파일/ 커밋들이 저장되는 곳

GIt 올리는 방법

1. git init
2. git add 파일이름(staging Area)
3. 깃이 인식할 수 있도록 메일과, 이름
    
    git config --global user.email "[you@example.com](mailto:you@example.com)"
    git config --global [user.name](http://user.name/) "Your Name"
    
4. 커밋 : git commit -m “?? “

git add . → (’.’ = 상대 경로에서 현재 디렉터리 의미)

수정 사항 한번에 add할 수있음

1. vi 파일이름 : 없는 파일 생성하거나 있는 파일 열 때 사용
    
    q : 현재 상태에서 나갈때
    
    vi 파일이름 - > insert - > 파일 수정 후 esc, :wq(새로운 파일 생김)
    

# 쉽게 GIT 올리는 방법

sourcetree 설치!

배운 내용 github에 mark다운으로 정리
소스트리 확인하기 위해 마지막으로 확인