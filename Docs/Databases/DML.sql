use db_yojulab;

delete
from COMMONS_CODE;

insert into COMMONS_CODE 
(COMMON_CODE_ID,NAME,ORDER_NUMBER,ATTRIBUTION_1,ATTRIBUTION_2,DESCRIPTION,SYSTEM_CODE_YN,USE_YN,PARENT_COMMON_CODE_ID,REGISTER_SEQ,REGISTRY_DATE,MODIFIER_SEQ,MODIFY_DATE) 
select 'CarInforSearch','CarInfor Search',1,NULL,NULL,'CarInfor Search','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'YEAR','per YEAR',1,NULL,NULL,'Using Yes','System_Code_Yes','Yes','CarInforSearch','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'CAR_NAME','per CAR_NAME',2,NULL,NULL,'Using No','System_Code_Yes','Yes','CarInforSearch','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Use_YN','Yes or No',1,NULL,NULL,'Using Yes or No','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'Yes','Yes',1,NULL,NULL,'Using Yes','System_Code_Yes','Yes','Use_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'No','No',2,NULL,NULL,'Using No','System_Code_Yes','Yes','Use_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_YN','Sytem Yes or No',1,NULL,NULL,'Sytem Using Yes or No','System_Code_Yes','Yes',NULL,'UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_Yes','Yes',1,NULL,NULL,'Sytem Using Yes','System_Code_Yes','Yes','System_Code_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual union all 
select 'System_Code_No','No',2,NULL,NULL,'Sytem Using No','System_Code_Yes','Yes','System_Code_YN','UUID-1111-1111111',now(),'UUID-1111-1111111',now() from dual 
; 

DELETE FROM AUTHS;
DELETE FROM AUTH_NAMES;


-- 권한 종류
insert into AUTH_NAMES 
(UNIQUE_ID,AUTH_NAME)
values
('ROLE_MANAGER','SYSTEM_MANAGER'),
('ROLE_ADMIN','ADMIN'),
('ROLE_USER','USER'),
('ROLE_GUEST','GUEST')
;

INSERT INTO FACTORYS (COMPANY_ID, COMPANY)
VALUES ('C001', '현대자동차');

INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('소나타', '2020', 'CI001', 'C001');

INSERT INTO OPTION_INFORS (OPTION_INFOR_ID, OPTION_NAME)
VALUES ('OI001', '네비게이션');

INSERT INTO OPTIONS (OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUES ('O001', 'CI001', 'OI001');

INSERT INTO FACTORYS (COMPANY_ID, COMPANY)
VALUES ('C002', '기아자동차');

INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('쏘렌토', '2021', 'CI002', 'C002');

INSERT INTO OPTION_INFORS (OPTION_INFOR_ID, OPTION_NAME)
VALUES ('OI002', '후방 카메라');

INSERT INTO OPTIONS (OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUES ('O002', 'CI002', 'OI002');

INSERT INTO FACTORYS (COMPANY_ID, COMPANY)
VALUES ('C003', '르노삼성자동차');

INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM6', '2019', 'CI003', 'C003');

INSERT INTO OPTION_INFORS (OPTION_INFOR_ID, OPTION_NAME)
VALUES ('OI003', '가죽 시트');

INSERT INTO OPTIONS (OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUES ('O003', 'CI003', 'OI003');

INSERT INTO FACTORYS (COMPANY_ID, COMPANY)
VALUES ('C004', 'BMW');

INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('3 시리즈', '2022', 'CI004', 'C004');

INSERT INTO OPTION_INFORS (OPTION_INFOR_ID, OPTION_NAME)
VALUES ('OI004', '파노라마 썬루프');

INSERT INTO OPTIONS (OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUES ('O004', 'CI004', 'OI004');

INSERT INTO FACTORYS (COMPANY_ID, COMPANY)
VALUES ('C005', '토요타');

INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('캠리', '2020', 'CI005', 'C005');

INSERT INTO OPTION_INFORS (OPTION_INFOR_ID, OPTION_NAME)
VALUES ('OI005', '안전 패키지');

INSERT INTO OPTIONS (OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
VALUES ('O005', 'CI005', 'OI005');

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O006', 'CI001', 'OI005')
;
INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O007', 'CI002', 'OI004')
;

INSERT INTO `OPTIONS`
(OPTION_ID, CAR_INFOR_ID, OPTION_INFOR_ID)
value
('O008', 'CI001', 'OI003')
;

-- more car infor
-- Insert Statement 1
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('소나타', '2020', 'CI101', 'C001');

-- Insert Statement 2
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜저', '2019', 'CI102', 'C001');

-- Insert Statement 3
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('투싼', '2021', 'CI103', 'C002');

-- Insert Statement 4
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('셀토스', '2022', 'CI104', 'C002');

-- Insert Statement 5
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM6', '2019', 'CI105', 'C003');

-- Insert Statement 6
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM3', '2020', 'CI106', 'C003');

-- Insert Statement 7
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('3 시리즈', '2022', 'CI107', 'C004');

-- Insert Statement 8
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('5 시리즈', '2021', 'CI008', 'C004');

-- Insert Statement 9
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('캠리', '2020', 'CI009', 'C005');

-- Insert Statement 10
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('RAV4', '2021', 'CI010', 'C005');

-- Insert Statement 11
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2019', 'CI011', 'C001');

-- Insert Statement 12
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('투싼', '2020', 'CI012', 'C002');

-- Insert Statement 13
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('K5', '2021', 'CI013', 'C001');

-- Insert Statement 14
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('코나', '2020', 'CI014', 'C001');

-- Insert Statement 15
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2021', 'CI015', 'C001');

-- Insert Statement 16
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜저', '2020', 'CI016', 'C001');

-- Insert Statement 17
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('쏘렌토', '2019', 'CI017', 'C002');

-- Insert Statement 18
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('소울', '2021', 'CI018', 'C002');

-- Insert Statement 19
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM6', '2018', 'CI019', 'C003');

-- Insert Statement 20
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('QM6', '2022', 'CI020', 'C003');

-- Insert Statement 21
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('i3', '2020', 'CI021', 'C004');

-- Insert Statement 22
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('X5', '2021', 'CI022', 'C004');

-- Insert Statement 23
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('카니발', '2020', 'CI023', 'C002');

-- Insert Statement 24
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜버드', '2021', 'CI024', 'C002');

-- Insert Statement 25
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('프리미어', '2020', 'CI025', 'C003');

-- Insert Statement 26
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('삼성Q8', '2021', 'CI026', 'C003');

-- Insert Statement 27
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('7 시리즈', '2022', 'CI027', 'C004');

-- Insert Statement 28
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('X7', '2021', 'CI028', 'C004');

-- Insert Statement 29
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('캠리', '2019', 'CI029', 'C005');

-- Insert Statement 30
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('RAV4', '2020', 'CI030', 'C005');

-- Insert Statement 31
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2020', 'CI031', 'C001');

-- Insert Statement 32
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜저', '2021', 'CI032', 'C001');

-- Insert Statement 33
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('투싼', '2019', 'CI033', 'C002');

-- Insert Statement 34
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('코나', '2020', 'CI034', 'C002');

-- Insert Statement 35
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM6', '2019', 'CI035', 'C003');

-- Insert Statement 36
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM3', '2020', 'CI036', 'C003');

-- Insert Statement 37
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('3 시리즈', '2022', 'CI037', 'C004');

-- Insert Statement 38
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('5 시리즈', '2021', 'CI038', 'C004');

-- Insert Statement 39
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('캠리', '2020', 'CI039', 'C005');

-- Insert Statement 40
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('RAV4', '2021', 'CI040', 'C005');

-- Insert Statement 41
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2019', 'CI041', 'C001');

-- Insert Statement 42
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('투싼', '2020', 'CI042', 'C002');

-- Insert Statement 43
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('K5', '2021', 'CI043', 'C001');

-- Insert Statement 44
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('코나', '2020', 'CI044', 'C001');

-- Insert Statement 45
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2021', 'CI045', 'C001');

-- Insert Statement 46
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜저', '2020', 'CI046', 'C001');

-- Insert Statement 47
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('쏘렌토', '2019', 'CI047', 'C002');

-- Insert Statement 48
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('소울', '2021', 'CI048', 'C002');

-- Insert Statement 49
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('SM6', '2018', 'CI049', 'C003');

-- Insert Statement 50
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('QM6', '2022', 'CI050', 'C003');

-- Insert Statement 51
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('i3', '2020', 'CI051', 'C004');

-- Insert Statement 52
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('X5', '2021', 'CI052', 'C004');

-- Insert Statement 53
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('카니발', '2020', 'CI053', 'C002');

-- Insert Statement 54
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜버드', '2021', 'CI054', 'C002');

-- Insert Statement 55
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('프리미어', '2020', 'CI055', 'C003');

-- Insert Statement 56
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('삼성Q8', '2021', 'CI056', 'C003');

-- Insert Statement 57
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('7 시리즈', '2022', 'CI057', 'C004');

-- Insert Statement 58
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('X7', '2021', 'CI058', 'C004');

-- Insert Statement 59
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('캠리', '2019', 'CI059', 'C005');

-- Insert Statement 60
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('RAV4', '2020', 'CI060', 'C005');

-- Insert Statement 61
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('아반떼', '2020', 'CI061', 'C001');

-- Insert Statement 62
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('그랜저', '2021', 'CI062', 'C001');

-- Insert Statement 63
INSERT INTO CAR_INFORS (CAR_NAME, YEAR, CAR_INFOR_ID, COMPANY_ID)
VALUES ('투싼', '2019', 'CI063', 'C002');

select 'Done'    ;