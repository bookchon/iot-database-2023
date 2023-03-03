-- 멤버 테이블
CREATE TABLE membertbl (
userID CHAR(8) NOT NULL PRIMARY KEY,
name VARCHAR(10) NOT NULL,
email VARCHAR(50) NULL UNIQUE -- 유니크 제약조건
);

CREATE TABLE stdtbl(
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) ,
    grade INT CHECK (grade >= 1 AND grade <=4), -- 학년은 1 - 4
    CONSTRAINT CK_name CHECK (name IS NOT NULL) -- NOT NULL
);