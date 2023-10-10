-- 계약 Contacts 테이블을 생성 ...
-- 테이블 생성 CREATE TABLE
CREATE TABLE contacts (
    -- 컬럼명 자료형 제약조건,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- ALTER
-- 1. 테이블 이름 변경
ALTER TABLE contacts RENAME TO new_contacts;

-- 2. 컬럼 이름 변경
ALTER TABLE new_contacts RENAME COLUMN name TO last_name;
-- RENAME 만 COLUMN 생략 가능
ALTER TABLE new_contacts RENAME name TO last_name;

-- 3.1 새 컬럼 추가
ALTER TABLE new_contacts ADD COLUMN address TEXT NOT NULL DEFAULT "Unknown";

-- 3.2 컬럼 삭제
ALTER TABLE new_contacts DROP COLUMN address;

-- 테이블 삭제 DROP
DROP TABLE new_contacts;
