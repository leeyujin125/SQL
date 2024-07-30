-- CREATE DATABASE BookDB; 
USE BookDB;

-- CREATE TABLE Book(
-- 	bookid INT,
--     bookname VARCHAR(20),
--     publisher VARCHAR(20),
--     price INT
-- );

-- INSERT INTO Book(bookid, bookname, publisher, price) VALUES(100, '데이터베이스', '한빛아카데미', 27000);
-- 모든 열에 데이터 삽입 시, 속성 이름 생략 가능
-- INSERT INTO Book VALUES (100, '데이터베이스', '한빛아카데미', 27000);

-- INSERT INTO Book VALUES (101, '파이썬', '한빛아카데미', 22000);
-- INSERT INTO Book VALUES (102, 'JSP 프로그래밍', '생능출판사', 26000);
-- INSERT INTO Book VALUES (103, '자바스크립트', '길벗', 45000);
-- INSERT INTO Book VALUES (104, '데이터베이스 배움터', '생능출판사', 30000);

-- select * from book;

-- select * from book where bookid = 101;

-- select bookname from book;

-- select publisher from book;

-- select bookname, publisher from book;

-- SELECT * FROM Book WHERE price > 25000;

-- select * from book where price between 10000 and 25000;

-- select * from book where publisher in('길벗', '생능출판사');

-- select * from book where publisher not in('길벗', '생능출판사');

-- select publisher from book where bookname like '데이터베이스';

-- select bookname, publisher from book where bookname like '%데이터베이스%';

-- select bookname from book where bookname like '_이%';

-- select * from book where publisher = '길벗' or publisher = '생능출판사';

-- select * from book where bookname like '%데이터%' and price >= 30000;

-- -- 실습문제 2

-- -- 제목이 '프로그래밍'으로 끝나는 책 정보 검색 (길이 상관 X, 제목, 가격만 조회)
-- select bookname, price from book where bookname like '%프로그래밍';

-- -- 제목이 '데이터'로 시작하면서 6자인 책 정보 검색 (책의 모든정보 조회)
-- select * from book where bookname like '데이터___';

-- -- 제목의 세 번째 글자가 '터'인 책 정보 검색
-- select * from book where bookname like '__터%';

-- -- '한빛아카데미'의 도서 중 '데이터' 관련된 책 정보 검색
-- select * from book where publisher = '한빛아카데미' and bookname like '%데이터%';

-- 0723
select * from book order by bookname asc;

select * from book order by price; -- 가격을 기준으로 내림차순 (기본값은 asc)

select * from book order by bookname desc;

select * from book order by price desc;

INSERT INTO Book VALUES (105, 'HTML 기초', '한빛아카데미', 37000);
INSERT INTO Book VALUES (106, '파이썬 데이터분석', '이지스퍼블리싱', 25000);
INSERT INTO Book VALUES (107, 'Char GPT', '생능출판사', 29000);
INSERT INTO Book VALUES (108, 'ReachJS', '이지스퍼블리싱', 41000);
INSERT INTO Book VALUES (109, '홈페이지 만들기 기초', '한빛아카데미', 32000);
INSERT INTO Book VALUES (110, '데이터 시각화', '생능출판사', 27000);

commit;



select publisher, sum(price) from book group by publisher having publisher = '생능출판사';

-- select publisher, sum(price) from Book where price > 20000 group by publisher -- having에서 그룹으로 묶이지 않은 테이블을 쓰려면 where절로 쓰기!

update book set price = 23000 where bookid = 101;

select * from book where bookid = 101;

delete from Book where publisher = ‘길벗’;

alter table Book add isbn varchar(10);

select * from book;

-- Book 테이블의 isbn 속성의 데이터 타입을 INT로 변경
alter table book modify isbn int;

-- Book 테이블의 isbn 속성의 이름을 '일련번호'로 변경
alter table book change isbn 일련번호 int;
select * from book;

-- Book 테이블의 일련번호 속성을 삭제
alter table book drop column 일련번호;

drop table newBook;

-- id에 기본키 추가 (프라이머리키)
CREATE TABLE newBook(
	bookid int primary key,
    bookname varchar(20),
    publisher varchar(20),
    price int
);

insert into newBook (bookid, bookname, publisher, price) values (100, '데이터베이스', '한빛아카데미', 27000);

select * from newBook;

insert into newBook values (100, '프로그래밍', '한빛아카데미', 30000); -- 기본키 중복으로 에러
insert into newBook values (null, '데이터 시각화', '생능출판사', 27000); -- 기본키에 null값은 넣을 수 없음

delete from newBook;

alter table newBook modify bookname varchar(20) not null;
alter table newBook modify publisher varchar(20) not null;

insert into newBook values (101, null, null, 25000); -- 위에서 bookname과 publisher가 not null이라 에러

insert into newBook values (102, '데이터 시각화', '생능출판사', 25000);

select * from newBook;

alter table newBook modify price int default 10000;

insert into newBook (bookid, bookname, publisher) values (103, '프로그래밍', '한빛아카데미');

delete from newBook;

INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (100, '데이터베이스', '한빛아카데미', 27000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (101, '파이썬', '한빛아카데미', 22000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (102, 'JSP 프로그래밍', '생능출판사', 26000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (103, '자바스크립트', '길벗', 45000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (104, '데이터베이스 배움터', '생능출판사', 30000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (105, 'HTML 기초', '한빛아카데미', 37000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (106, '파이썬 데이터', '이지스퍼블리싱', 25000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (107, 'Chat GPT', '생능출판사', 29000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (108, 'ReactJS', '이지스퍼블리싱', 41000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (109, '홈페이지 만들기', '한빛아카데미', 32000);
INSERT INTO newBook (bookid, bookname, publisher, price) VALUES (110, '데이터 시각화', '생능출판사', 27000);


-- 외래키

/*
CREATE TABLE newOrders(
	orderid varchar(10) primary key,
    bookid int not null,
    member varchar(10) not null,
    address varchar(20) not null,
    foreign key(bookid) references newBook(bookid)
)
*/


insert into newOrders(orderid, bookid, member, address) values ('p001', 102, '정수아', '서울');

select * from newOrders;

insert into newOrders(orderid, bookid, member, address) values ('p002', 120, '정수아', '서울'); -- 참조테이블에 입력된 값만 가능해서 에러

delete from newBook where bookid = 102; -- newOrders 테이블에서 bookid 속성을 참조하기 때문 (위에서 102번을 가지고 있기 때문)

delete from newOrders;

INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p001', 102, '오한솔', '경기');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p002', 107, '김현우', '서울');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p003', 103, '박홍진', '부산');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p004', 102, '김현우', '서울');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p005', 104, '문종헌', '대전');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p006', 105, '김현우', '서울');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p007', 103, '이봉림', '부산');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p008', 102, '정희성', '경기');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p009', 107, '오한솔', '경기');
INSERT INTO newOrders(orderid, bookid, member, address) VALUES ('p010', 103, '김현우', '서울');

-- 조인

-- 김현우 고객이 주문한 책의 제목과 가격 검색
select newBook.bookname, newBook.price
	from newBook, newOrders
    where newOrders.member = '김현우'
    and
    newOrders.bookid = newBook.bookid;

-- 도서를 주문한 고객들의 운송장 정보 출력 (where 조건으로 필터링할 것 없으면 없어도 됨! where 뒤에 바로 기본값 주기, 추가 조건 있으면 and로 조건 주기)
select newOrders.orderid, newOrders.member, newBook.bookname, newBook.price, newOrders.address
	from newBook, newOrders
    where newOrders.bookid = newBook.bookid;
    
    
-- BOOKNAME과 PUBLISHER 연결하기
SELECT CONCAT(bookname, ' : ', publisher) FROM Book;