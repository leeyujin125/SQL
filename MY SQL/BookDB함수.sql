USE BookDB;

-- 집계 함수
select sum(price) from book; -- 합계

select sum(price) as '가격 총합' from book; -- 열 제목에 별칭 붙여줌

select avg(price) as '평균 가격' from book; -- 평균

select count(*) as '총 개수' from Book; -- 총 개수 (*)을 쓰면 빈 칸(null)도 카운팅됨. but (테이블 이름)을 쓰면 빈 칸은 카운팅 안함

select min(price) as '최저가' from Book; -- 제일 작은 값

select max(price) as '최고가' from Book; -- 제일 큰 값

select distinct publisher from book; -- 중복 제거 + 집계, 계산 안됨!! (group by 사용않고)

