select concat('DATA', 'BASE') as 'concat'; -- 문자열 연걸
SELECT LOWER('Database SQL'), UPPER('Database SQL'); -- 대소문자 변경
SELECT LENGTH('Database SQL'); -- 문자열 길이 (Byte 계산해주는 것)
SELECT LENGTH('데이터베이스'); -- SQL은 한글의 한 글자가 3Byte이기 때문에 3 * 6 = 18이라서 결과는 18이 나옴
SELECT char_length("데이터베이스"); -- 정확한 문자열 길이 반환 (자릿수 계산)
SELECT LTRIM('     데이터베이스     ') AS '왼쪽'; -- 왼쪽 공백 제거
SELECT RTRIM('     데이터베이스     ') AS '오른쪽'; -- 오른쪽 공백 제거
SELECT TRIM('      데이터베이스     ') AS '양쪽'; -- 양쪽 공백 제거
SELECT REPLACE('데이터베이스 프로그래밍', '데이터베이스', '웹') AS '문자열 변경'; -- 문자열 변경

SELECT SYSDATE(); -- DBMS 시스템상 오늘 날짜
SELECT NOW(); -- 지금 날짜와 시간
SELECT CURRENT_DATE(); -- 날짜만
SELECT CURRENT_TIME(); -- 시간만
select month('2024-07-25 12:34:50'); -- only month
select day('2024-07-25 12:34:50'); -- only day
select year('2024-07-25 12:34:50'); -- only year
select hour('2024-07-25 12:34:50'); -- 시간
select minute('2024-07-25 12:34:50'); -- 분
select second('2024-07-25 12:34:50'); -- 초

SELECT DATEDIFF('2024-02-28','2023-09-01'); -- 날짜 차이 계산(기준 날짜, 비교 날짜)
SELECT ADDDATE('2024-07-25', 180); -- 날짜 더하기 (기준 날짜, 숫자)

SELECT ABS(-80), ABS(80); -- 절대값 계산
SELECT ROUND(12.678, 1); -- 반올림