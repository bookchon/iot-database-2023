/* BookRentalShop 연습 */
SELECT *
  FROM membertbl;
  
-- 서브쿼리 - 성능이 떨어지는 성향이 있음
SELECT b.Author AS '저자' -- 1
    -- , b.Division AS '장르' -- 2
     , (SELECT Names FROM divtbl WHERE Division = b.Division ) AS '장르'
     , b.Names AS '책제목' -- 3
     , b.ISBN
     , b.price AS '금액'
  FROM bookstbl AS b
 ORDER BY b.Names ASC; -- 책 제목, 3 -> b.Names 대신 쓸 수 있는 방법임
 
 -- 조인 - 서브쿼리 대신 사용함
 SELECT b.Author AS '저자'
      , b.Division
      , d.Names AS '장르'
      , b.Names AS '책제목'
      , b.ISBN
      , b.Price AS '금액'
  FROM bookstbl AS b
 INNER JOIN divtbl AS d
    ON b.Division = d.Division
 ORDER BY b.Names;
 
 -- 서브쿼리
 SELECT (SELECT Names
	       FROM divtbl
           WHERE Division = bb.Division) AS '장르'
      , bb.총합
   FROM (
		 SELECT b.Division
			  , sum(b.Price) AS '총합'
		 FROM bookstbl AS b
		 group by b.Division
		 ) AS bb; -- 하나만 추가하면 5번 정답

-- 내부조인

SELECT m.Names AS '이름'
     , m.Addr AS '주소'
     , m.Mobile AS '연락처'
     , r.rentalDate AS '대여일자'
     , r.returnDate AS '반납일자'
     , b.Names AS '책제목'
     , d.Names AS '장르'
     , b.Price AS '금액'
  FROM membertbl AS m
 INNER JOIN rentaltbl AS r
    ON m.memberIdx = r.memberIdx
 INNER JOIN bookstbl AS b
    ON r.bookIdx = b.bookIdx
 INNER JOIN divtbl AS d
    ON b.Division = d.Division;
    
-- 외부조인
SELECT m.Names AS '이름'
     , m.Addr AS '주소'
     , m.Mobile AS '연락처'
     , r.rentalIdx
     , r.rentalDate AS '대여일자'
     , r.returnDate AS '반납일자'
     , b.Names AS '책제목'
     , d.Names AS '장르'
     , b.Price AS '금액'
  FROM membertbl AS m
 LEFT OUTER JOIN rentaltbl AS r
    ON m.memberIdx = r.memberIdx
 LEFT OUTER JOIN bookstbl AS b
    ON r.bookIdx = b.bookIdx
 LEFT OUTER JOIN divtbl AS d
    ON b.Division = d.Division
 WHERE r.rentalIdx IS NULL;
 
-- 
SELECT b.Author
	 , b.Division
     , COUNT(b.Author)
     , SUM(b.Price)
 FROM bookstbl AS b
GROUP BY d.Author, b.Division
HAVING COUNT(b.Author) >= 2
 