-- employees DB의 employees 테이블에서 데이터 10만개 가져오기
CREATE TABLE indexTBL(
	first_name VARCHAR(14),
    last_name VARCHAR(16),
    hire_data DATE
);

-- employees.employees 체이블에서 데이터 10만건 가져오기
INSERT INTO indexTBL
	SELECT first_name, last_name, hire_date
	  FROM employees.employees
	 LIMIT 300000;

-- 조회
SELECT * FROM indexTBL
 WHERE first_name = 'Mary';