-- 사용 데이터 베이스 변경
USE homeplus;

-- SELECT ALL(X) ALL은 *로 함
-- 한 문장의 끝은 세미콜론(;)으로 마침
SELECT * FROM indextbl;
SELECT * FROM homeplus.indextbl; /* 둘 다 동일한 의미임 */

SELECT * FROM employees.titles; -- 다른 DB에서의 데이터를 가져오려면

-- 필요한 컬럼만 가져올 때
SELECT first_name, last_name FROM indextbl; -- 두번 누르면 알아서 가져와짐

-- sqldb 사용
USE sqldb;

-- 조건절 검색
SELECT userID
	, name
    , birthYear
    , height
  FROM usertbl 
 WHERE name = '김경호';
 
-- 관계 연산자
SELECT *
  FROM usertbl
 WHERE birthYear >= 1970
   AND height >= 182;
   
-- 사이의 값을 조회
SELECT *
  FROM usertbl
  WHERE height BETWEEN 180 AND 183;
  
-- IN 연산자
SELECT *
 FROM usertbl
 WHERE addr IN ('경남', '경북', '전남');
 
 -- 문자열 검색 - 뉴스 본문 안에서 일정 단어를 검색
 SELECT *
   FROM usertbl
   WHERE name LIKE '김%';
   
-- Sunquery(서브쿼리) 사용 위치
-- 1. 컬럼 위치
-- 2. FROM 절 테이블 위치
-- 3. 조건절 위치
-- WHERE 절에 서브쿼리가 컬럼이 한 개 이상이거나 결과가 한 개 이상이면 조건연산자로 조회할 수 없음
SELECT name
	, height
  FROM usertbl
 WHERE height > (SELECT height FROM usertbl WHERE name = '김경호');
 
 -- 가상테이블
 SELECT u.userId
	  , u.name
      , u.birthYear
  FROM (
	    SELECT userID, name, birthYear, addr 
        FROM usertbl
        ) AS u
 WHERE u.birthYear > 1969;
 
-- 컬럼에 쓰는 서브쿼리
SELECT b.userID
	 , (SELECT * FROM usertbl WHERE )
     , b.prodName
     , b.price * b.amount
  FROM buytbl AS b;

-- 정렬 Order BY
SELECT *
  FROM usertbl
 WHERE birthYear > 1069; 