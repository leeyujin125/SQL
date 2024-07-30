USE StudentDB;
USE BookDB;

-- 실습 4

-- 1) 데이터베이스 관련 책 가격의 총액 계산
select sum(price) as '총액' from book where bookname like '%데이터베이스%';

-- 2) 출판사가 '한빛아카데미'인 책의 개수 출력
select count(*) as '한빛아카데미' from Book where publisher = '한빛아카데미';

-- 3) 출판사 별로 가격이 30,000원 이상인 도서의 총 수량을 계산
select publisher, count(*) as '도서수량' from Book where price >= 30000 group by publisher;

-- 4) 출판사 별로 가격이 30,000원 이상인 도서의 총 수량을 계산 (총 수량이 두 권 이상인 출판사만 조회)
select publisher, count(*) as '도서수량' from Book where price >= 30000 group by publisher having count(*) >= 2;

-- 5) 학생들의 나이 총 합 계산
select sum(age) as '나이총합' from studentinfo;

-- 7) '컴퓨터'를 수강하는 학생들의 평균 나이 계산
select avg(age) as '평균 나이' from studentinfo where course = '컴퓨터';

-- 8) '영어' 과목을 수강하는 학생 수 계산
select count(*) as '수강인원' from studentinfo where course = '영어';

-- 9) 각 지역별 학생 수를 계산
select address, count(*) as '수강인원' from studentinfo group by address;

-- 10) 각 지역별 학생들의 평균 나이 계산
select address, avg(age) as '평균나이' from studentinfo group by address;

-- 11) 과목 별 평균 나이가 25세 이상인 과목명과 학생 수를 계산 (having 이용)
select course, count(*) as '수강생수' from studentinfo group by course having avg(age) >= 25;