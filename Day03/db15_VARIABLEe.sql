-- 변수 사용
USE sqldb;

SET @myVar = 5;
SELECT @myVar;
SET @myVar = '가수이름 --> ';

SELECT @myVar, name
  FROM usertbl
 WHERE height > 170;
 
SELECT name, height + @myVar1
  FROM usertbl;
  
-- 형변환
SELECT CAST(birthYear AS CHAR(4)) FROM usertbl;
SELECT (CONVERT(birthYear, CHAR(4))AS SIGNED INTEGER) FROM usertbl;
SELECT CAST(addr AS decimal) FROM usertbl;
SELECT CAST(addr, decimal) FROM usertbl;

SELECT CAST('1000' AS decimal);

-- 암시적 형변환
SELECT 200+300;

SELECT CONCAT('Hello', 'World');

SELECT '200'+'300'; -- MySQL이외에서는 '200300'

/* 내장함수 리스트 */
-- 흐름함수
-- 100>200 ? '참' : '거짓'
SELECT IF(100>200, '참', '거짓');

SELECT IFNULL(NULL, 0) + 100;
SELECT NULL+100;

-- NULLIF는 많이 사용되지 않음
SELECT NULLIF(100, 900);

-- QUARY 작성 시 많이 사용 
SELECT name
     , birthYear
     , addr
     , CASE	addr
       WHEN '서울' THEN '수도권'
       WHEN '경기' THEN '수도권'
       WHEN '부산' THEN '광역권'
       ELSE '모름' END
  FROM usertbl;
  
-- 문자열함수
SELECT ASCII('A'), CHAR(65), ASCII('a');
SELECT ASCII('안'), CHAR(236); -- 한글은 사용하면 안됨

-- CHAR_LENGTH(글자길이), LENGTH(BYTE)
SELECT CHAR_LENGTH('ABC'), LENGTH('ABC');
-- UTF-8
SELECT CHAR_LENGTH('가나다'), LENGTH('가나다'); -- 한글은 한 글자 당 3bytes

-- DB는 인덱스를 1부터 시작
SELECT REPLACE('Hello World', 'Hello', 'Byebye')
SELECT LEFT('ABCDEFGHIJKLMNOP' '3');

-- LTRIM, RTRIM, TRIM
SELECT LTRIM('          Hello World!          ') AS 'ltrim'
	 , RTRIM('          Hello World!          ') AS 'rtrim'
	 , TRIM('          Hello World!          ') AS 'trim';
     
-- 수학함수
SELECT ABS(-100);
-- 올림, 내림, 반올림
SELECT CEILING(4.7), FLOOR(4.9), ROUND(4.4)

SELECT MOD(157, 10);

-- RANDOM
SELECT RAND(), FLOOR(1 + (RAND() * (6)));

-- 날짜 및 시간 함수
SELECT NOW();
SELECT ADDDATE('2023-03-02', INTERVAL -10 DAY);

SELECT YEAR(NOW());
SELECT DATE(NOW());
SELECT TIME(NOW());
SELECT DAYOFWEEK(NOW()); # 1(일) ~ 7(토)
SELECT LAST_DAY(NOW());
SELECT LAST_DAY('2022-02-01');

-- ROW_COUNT()
USE sqldb;