USE tabledb;

CREATE TABLE TBL1(
	ID int NOT NULL PRIMARY KEY,
    bridge int NULL,
    contents VARCHAR(5000)
);

-- sqldb DB의 usertbl의 데이터 중 userID, name, birthYear, addr만 가져와서 tabledb.usertbl에 넣은 것
INSERT INTO tabledb.usertbl
SELECT userID, name, birthYear, addr
  FROM sqldb.usertbl;