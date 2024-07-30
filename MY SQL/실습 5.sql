-- 실습 5

USE StudentInfo;

-- 5-1 '박기석'학생의 주소를 '제주'로 변경
update StudentInfo set address = '제주' where name = '박기석';

-- 5-2 id가 10인 학생을 삭제
delete from StudentInfo where id = 10;
select * from StudentInfo;

-- 5-3 학생 정보 테이블에 새로운 속성 추가
alter table StudentInfo add score varchar(2);
select * from StudentInfo;

-- 5-4 각 학생의 score 속성에 학점 값 삽입 순서대로 A, B, A, C, B, D, A, C, D, A 입력
update StudentInfo set score = 'A' where id = 1;
update StudentInfo set score = 'B' where id = 2;
update StudentInfo set score = 'A' where id = 3;
update StudentInfo set score = 'C' where id = 4;
update StudentInfo set score = 'B' where id = 5;
update StudentInfo set score = 'D' where id = 6;
update StudentInfo set score = 'A' where id = 7;
update StudentInfo set score = 'C' where id = 8;
update StudentInfo set score = 'D' where id = 9;
update StudentInfo set score = 'A' where id = 10;

-- 5-5 각 학점 별 학생 수 계산
select score, count(*) as '학생수' from StudentInfo group by score;

-- 5-6 '컴퓨터'또는 '영어' 과목을 수강하는 학생의 이름 및 과목명 
select name, course from StudentInfo where course in ('컴퓨터', '영어');

