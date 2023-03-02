-- INSERT INTO SELECT
-- usertbl에서 앞의 네개 컬럼 값을 가져와서 전부
-- usetbl_bak 앞에 집어 넣어라
INSERT INTO usertbl_bak (userID, name, birthYear, addr)
SELECT userID, name, birthYear, addr FROM usetbl;