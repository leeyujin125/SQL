-- CREATE DATABASE StudentDB;
USE StudentDB;

-- CREATE TABLE StudentInfo(
-- 	id INT,
--     name varchar(20),
--     age int,
--     address varchar(20),
--     course varchar(20)
-- )

INSERT INTO StudentInfo values (1, '문종헌', 24, '서울', '영어');

INSERT INTO StudentInfo values (2, '오한솔', 22, '부산', '수학');

INSERT INTO StudentInfo values (3, '정국철', 25, '서울', '음악');

INSERT INTO StudentInfo values (4, '박기석', 27, '대전', '국어');

INSERT INTO StudentInfo values (5, '안창범', 20, '광주', '수학');
INSERT INTO StudentInfo values (6, '박홍진', 22, '부산', '컴퓨터');
INSERT INTO StudentInfo values (7, '공지훈', 28, '강원', '국어');
INSERT INTO StudentInfo values (8, '정희성', 30, '제주', '음악');
INSERT INTO StudentInfo values (9, '이봉림', 34, '대전', '영어');
INSERT INTO StudentInfo values (10, '김현우', 21, '서울', '컴퓨터');

select * from studentinfo;

select id, name from studentinfo;


-- 0723 실습문제 3

-- 나이가 30 이상인 학생 정보 검색
select * from studentinfo where age >= 30;

-- '컴퓨터'를 수강하는 학생 정보 검색
select * from studentinfo where course = '컴퓨터';

-- 이름이 '박기석'인 학생 정보 검색
select * from studentinfo where name = '박기석';

-- 나이가 20 ~ 25살 사이인 학생 정보 검색 between 이용
select * from studentinfo where age between 20 and 25;

-- 나이가 28살이거나 34살인 학생 정보 검색 in 사용
select * from studentinfo where age in(28, 34);

-- 성이 '김'씨인 학생 정보 검색
select * from studentinfo where name like '김%';

-- 이름의 두 번째 글자가 '지'이고 그 뒤는 무엇이든 관계없는 학생 정보 검색
select * from studentinfo where name like '_지%';

-- 나이를 기준으로 오름차순 정렬하여 검색
select * from studentinfo order by age;

-- 나이가 많은 사람부터 적은 사람 순으로 순차적 검색
select * from studentinfo order by age desc;

alter table StudentInfo add score varchar(2);
select * from StudentInfo;

