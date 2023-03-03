-- 뷰
USE sqldb;

CREATE VIEW uv_potentialUser
 AS
	SELECT u.*
         , b.num, b.prodName, b.price, b.amount
      FROM usertbl as u
      left outer join buytbl as b
        on u.userID = b.userID
	  WHERE b.userID IS NULL;
      
SELECT * FROM uv_potentialUser;