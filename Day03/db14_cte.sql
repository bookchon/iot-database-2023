-- CTE Common Table Expression
WITH cte_join(userID, name, prodName)
AS
(
	SELECT u.userID
         , u.name
         , u.prodName
         , u.price
	  FROM buytbl AS b
      JOIN usertbl AS u
        ON b,userID = u.userID
)

SELECT * FROM cte_join;