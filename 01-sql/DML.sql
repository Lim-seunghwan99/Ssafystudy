-- CREATE TABLE users (
--     first_name TEXT NOT NULL,
--     last_name TEXT NOT NULL,
--     age INTEGER NOT NULL,
--     country TEXT NOT NULL,
--     phone TEXT NOT NULL,
--     balance INTEGER NOT NULL
-- );

-- first_name 과 last_name을 모두 users 테이블에서
SELECT first_name, last_name
FROM users
;

-- 데이터를 조회하는 DML : SELECT 문에 동작 순서..

-- SELECT : 4. 특정 열(컬럼)을 지정한다.
-- FROM : 1. 먼저 테이블 가져온다.
-- WHERE : 2. 조건에 맞는 값들을 추린다.
-- GROUP - HAVING : 3. 내가 특정 데이터를 그룹핑 + 보여줄 조건
-- ORDER BY : 5. 정렬을 수행한다.
-- LIMIT : 6. 해당 데이터에서 가져올 갯수를 제한한다.

-- 모든 컬럼 조회
SELECT * -- first_name, last_name, age, country, phone, balance
FROM users
;

-- 이름과 나이 컬럼 조회
SELECT last_name, age
FROM users
;

-- rowid와 이름 조회하기
SELECT rowid, first_name
FROM users
;


-- '김'의 성을 가지고 있는 사람을 모두 조회하기
-- WHERE 절을 통해 조건을 탐색하며 조회
SELECT *
FROM users
WHERE last_name = "김"
;


-- 김씨 성, 20살 이상
SELECT *
FROM users
WHERE last_name = "김" AND age > 20
;


-- 나이가 20이상, 30미만
SELECT *
FROM users
WHERE age BETWEEN 20 AND 29
-- BETWEEN A AND B : A 이상, B 이하
;


-- 나이가 20이상이고 30미만인 사람을 나이 오름차순으로 조회
SELECT *
FROM users
WHERE age BETWEEN 20 AND 29
ORDER BY age;


-- 정렬기준을 나이 오름차순 성 내림차순
SELECT *
FROM users
ORDER BY age, last_name desc;


-- 이름과 나이를 나이가 많은 순
SELECT first_name, age
FROM users
ORDER BY age DESC;

-- 이름 나이 계좌 잔고를 나이가 오름, 계좌 내림차순
SELECT first_name, age, balance
FROM users
ORDER BY age, balance DESC;


-- 모든 지역을 조회하라(단 중복제거)
SELECT DISTINCT country
FROM users;


-- 지역 순으로 오름차순 정렬 중복없이
SELECT DISTINCT country
FROM users
ORDER BY country;


-- 이름과 지역이 중복없이
SELECT DISTINCT first_name, country
FROM users;


-- 나이가 30살 이상 이름 나이 계좌
SELECT first_name, age, balance
FROM users
WHERE age >= 30;

-- 나이가 30살 이상, 계좌 50만 초과 이름 나이 계좌
SELECT first_name, age, balance
FROM users
WHERE age >= 30 and balance > 500000;


-- 이름에 호가 들어가는 사람들 모두 조회
SELECT first_name, last_name
FROM users
WHERE first_name LIKE '%호%';


-- 이름이 준으로 끝나는 사람들 성과 이름 조회
SELECT first_name, last_name
FROM users
WHERE first_name LIKE '%준';


-- 핸드폰 번호 010으로 시작
SELECT first_name, phone
FROM users
WHERE phone LIKE '010%';


-- 서울 지역의 전화번호를 가진 사람들의 이름과 전화번호
SELECT first_name, phone
FROM users
WHERE phone LIKE '02-%'


-- 나이가 20대인 사람
SELECT first_name, age
FROM users
WHERE age LIKE '2_';


-- 전화번호 중간 4자리가 51로 시작하는 이름 전화번호
SELECT first_name, phone
FROM users
WHERE phone LIKE '%-51__-%';


-- 경기도 혹은 강원도 조회
SELECT first_name, country
FROM users
WHERE country in ('경기도', '강원도');


-- 경기도 혹은 강원도 제외 조회
SELECT first_name, country
FROM users
WHERE country not in ('경기도', '강원도');


-- 첫번째 부터 열번째 까지 데이터 출력
SELECT rowid, first_name
FROM users
LIMIT 10;


-- 계좌 잔고가 많은 10명의 이름과 계좌 조회
SELECT first_name, balance
FROM users
ORDER BY balance DESC
LIMIT 10;


-- 나이가 가장어린 5명의 나이와 이름
SELECT first_name, age
FROM users
ORDER BY age
LIMIT 5;


-- 11번째 부터 20번째까지 rowid와 이름
SELECT rowid, first_name
FROM users
LIMIT 10, 10;
-- 이 경우 앞이 OFFSET이다!!!


-- user 테이블의 행의 갯수 출력하기
SELECT COUNT(*) AS '갯수'
FROM users;


-- users 테이블 내에서 잔액의 평균 출력
SELECT AVG(balance) AS avg_balance
FROM users;


-- 모든 유저의 지역 조회
SELECT DISTINCT country
FROM users;


-- 특정 지역의 평균 구하기
SELECT DISTINCT country, AVG(balance) AS avg
FROM users
WHERE country='경기도';


-- 각 지역별 평균 구하기
SELECT country, AVG(balance) AS avg
FROM users
GROUP BY country;


-- 각 지역별 평균을 내림차순 평균 balance출력
SELECT country, avg(balance)
FROM users
GROUP BY country
ORDER BY avg(balance) DESC;


-- 나이가 30살 이상인 평균 나이
SELECT avg(age)
FROM users
WHERE age >= 30;


-- 각 지역별로 몇 명씩 살고 있는지 조회
SELECT country AS 지역, COUNT(*) AS 인원수
FROM users
GROUP BY country


-- 각 성씨가 몇명 있는지
SELECT last_name AS 성씨, COUNT(*) AS 인원수
FROM users
GROUP BY last_name
ORDER BY 인원수 DESC;


-- 각 지역별 평균 나이
SELECT country, round(avg(age), 2) AS 평균나이
FROM users
GROUP BY country


CREATE TABLE classmates (
-- not null 제약 조건이 없으면 생략해서 넣을 수도 있다
name TEXT NOT NULL,
age INTEGER NOT NULL,
address TEXT NOT NULL
);


-- INSERT 새로운 데이터를 테이블에 삽입
INSERT INTO classmates (name, age, address)
VALUES ("홍길동", 20, "잘 모르겠음");

-- 쉼표를 사용해서 여러가지 값을 한번에 삽입
INSERT INTO classmates (name, age, address)
VALUES  ("김짱구", 20, "잘 모르겠음"),
        ("김맹구", 25, "떡잎마을");

-- 순서를 변경해서 넣을 수도 있다
INSERT INTO classmates (address, age, name)
VALUES ("떡잎마을", 25, "신짱아");


-- 2번째 데이터 이름 김철수한무두루미, 주소 제주도로 변경
UPDATE classmates
SET name='김철수한무두루미',
    address = '제주도'
WHERE rowid = 2;


-- 4번째 데이터를 삭제
DELETE FROM classmates
WHERE rowid = 4;


-- 이름 데이터 중에서 영이 포함되어 있는 행을 삭제
DELETE FROM classmates
WHERE name LIKE '%길%';


-- 테이블의 모든 데이터를 삭제
DELETE FROM classmates


CREATE TABLE articles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    userid INTEGER NOT NULL
);

DROP TABLE users; 
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    roleid INTEGER NOT NULL
);

INSERT INTO articles (title, content, userid)
VALUES  ('제목1', '내용1', 1),
        ('제목2', '내용2', 2),
        ('제목3', '내용3', 3);


INSERT INTO users (name, roleid)
VALUES  ('adien', 1),
        ('ken', 2),
        ('lynda', 3);

-- 크로스 조인
SELECT * FROM articles, users;


-- userid 값과 user의 id값이 서로 같은 행만 남길 수 있는가?
SELECT *
FROM articles, users
WHERE articles.userid = users.roleid;


-- INNER JOIN
SELECT *
FROM articles
-- INNER JOIN users on articles.userid = users.roleid;
INNER JOIN users on userid = roleid;
-- userid와 roleid가 고유한 값이기 때문에 위와 아래는 같다.

CREATE TABLE contacts(
    PK PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    name TEXT NOT NULL,
    age INTEGER NOT NULL
);


CREATE TABLE user(
    PK PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    phoneNumber NOT NULL,
    gender INTEGER,
    address NOT NULL DEFAULT 'no address'
);