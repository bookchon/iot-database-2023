/* OUTER JOIN */
-- stdtbl
CREATE TABLE stdtbl(
	stdName NVARCHAR(10) NOT NULL PRIMARY KEY,
    adddr   NCHAR(4) NOT NULL
);
CREATE TABLE clubtbl(
	clubname NVARCHAR(10) NOT NULL PRIMARY KEY,
    roomNO   NCHAR(4) NOT NULL
);
CREATE TABLE stdclubtbl (
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	stdName NVARCHAR(10) NOT NULL,
    club NVARCHAR(10) NOT NULL,
    FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
    FOREIGN KEY(clubName) references clubtbl(clubName)
);