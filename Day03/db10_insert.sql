-- INSERT
INSERT INTO usertbl
 (userID, name, birthYear, addr, mobile1, mobile2, height, mDate)
 values
 ('SMG', '오슬예나', 1996, '부산', '010', '96025612', null, null, null );
 
-- NULL 컬럼은 생략 가능
INSERT INTO usertbl
(userID, name, birthYear, addr)
VALUES
('shm', '손흥민', 1991, '서울');

-- 칼럼 지정 생략 가능(단, 입력할 값의 순서가 컬럼 순서 일치해야함
INSERT INTO usertbl VALUES
('sjw', '손정웅', 1969, '서울', '010', '55554444', '176', null);

-- AUTO_INCREMENT의 경우 필드값을 입력하지 않아도 됨
INSERT INTO buytbl
(num, userID, prodName, groupName, price, amount)
VALUES
'OSYN', '노트북', '전자', '500000', 1);