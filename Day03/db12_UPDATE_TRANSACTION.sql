-- update & TRANSACTION

START TRANSACTION;

-- 경고! update 구문에는 WHERE절을 빼면 안됨
UPDATE USERTBL_BAK
   SET mobile1 = '010'
     , mobile2 = '66667788'
     , addr = '부산'
 WHERE userID = 'SMG';
   
COMMIT;
ROLLBACK;

-- DELETE
-- WHERE절 빠지면 
DELETE FROM usertbl
 WHERE userID = 'HSG';