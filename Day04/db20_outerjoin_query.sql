-- 쇼핑몰에 가입하고 물건을 한 번도 구매하지 않은 고객까지 출력
SELECT u.*
     , b.prodName
     , b.groupName
     , b.price
     , b.amount
  FROM usertbl AS u
  LEFT OUTER JOIN buytbl AS b
    ON u.userID = b.userID
 WHERE b.userID IS NULL;
 
-- 학생 중에 동아리에 가입하지 않은 학생
SELECT s.stdName, s.addr
     , j.num, j.clubName
  FROM stdtbl AS s
  LEFT OUTER JOIN stdclubtbl AS J
    ON s.stdName = j.stdName
 INNER JOIN clubtbl AS c
     ON s.stdName = j.stdName
 UNION -- 두 쿼리 결과를 합쳐 줌(집합)

SELECT s.stdName, s.addr
     , j.num, j.clubName
  FROM stdtbl AS s
 RIGHT OUTER JOIN stdclubtbl AS J
    ON s.stdName = j.stdName
 INNER JOIN clubtbl AS c	
 
-- in 조건이 만족하는 것
-- not in 조건이 만족하지 않는 것 출력
SELECT name
     , height
  FROM usertbl
 WHERE height NOT IN (SELECT height
						FROM usertbl
					   WHERE name LIKE '김경호%');