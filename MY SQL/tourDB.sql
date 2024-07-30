CREATE DATABASE tourDB;
USE tourDB;

-- 왼쪽 schemas에 해당 디비에 오른쪽 마우스 클릭. Table Data Import Wizard -> csv 파일이 저장되어있는 경로 들어가서 파일 선택 ->
-- Create new table에 테이블 이름 지정하기 -> 열과 타입 확인하고 수정할 것 있으면 수정 -> Next 눌러서 Finish까지 나오면 끝!

select * from tourTable;

-- 시도명을 한번만 출력 (2가지 방법)
select distinct 시도명 from tourTable;
select 시도명 from tourTable group by 시도명;

-- 경기도의 관광지 정보 검색
select * from tourTable where 시도명 = '경기도';
select * from tourTable where 주소 like '경기%';

-- 쇼핑 분야의 관광지 수 계산
select count(중분류) as '쇼핑' from tourTable where 중분류 = '쇼핑';

-- 각 분야 별 관광지 수 계산
select 중분류, count(중분류) as '관광지 수' from tourTable group by 중분류;

-- 테마공원의 이름 및 주소 검색
select 관광지명, 주소 from tourTable where 소분류 = '테마공원';

-- 검색건수가 60만 건 이상인 관광지 수 계산
select 소분류, count(소분류) as '관광지 수' from tourTable where 검색건수 > 600000 group by 소분류;

-- 가장 인기가 없는 관광지부터 인기가 많은 순으로 조회
select * from tourTable order by 검색건수 asc;

-- 10개의 관광지 정보만 조희 (LIMIT를 이용 / SELECT 속성이름 FROM 테이블 이름 LIMIT n; 0부터 시작해서 n개까지 데이터 검색 (== LIMIT 0, n과 같은 의미))
-- 									 SELECT 속성이름 FROM 테이블 이름 LIMIT n, m; n부터 시작해서 m개의 데이터 검색
select * from tourTable limit 10;