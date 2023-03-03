CREATE DATABASE tabledb;

USE tabledb;

CREATE TABLE usertbl (
	userID CHAR(8) NOT NULL PRIMARY KEY,
    name VARCHAR(10) NOT NULL, 
    birthYear INT NOT NULL,
    addr VARCHAR(10)
);

CREATE TABLE buytbl (
	num INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	userID CHAR(8) NOT NULL PRIMARY KEY,
    prodName VARCHAR(10) NOT NULL,
    price INT,
    FOREIGN KEY(userID) REFERENCES usertbl(userID)
);

-- 실무에 가장 근접한 PK 방법
-- 기본 키 두 개 지정하는 방법
CREATE TABLE prodtbl(
	prodCode CHAR(3) NOT NULL,
    prodID CHAR(4) NOT NULL,
	prodDATE DATETIME NOT NULL,
    prodCur VARCHAR(10) NULL,
    CONSTRAINT pk_prodrbl_prodcode_prodid
		PRIMARY KEY (prodCode, prodID) -- 핵심
);