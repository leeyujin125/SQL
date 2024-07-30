USE BookDB;

-- 도서 제목에 '데이터'가 포함된 도서를 'Data'로 변경한 후 도서 목록을 출력
select replace(bookname, '데이터', 'Data') AS bookname, publisher, price from book;

-- 한빛아카데미에서 출판한 도서의 제목과 제목의 문자 수, 바이트 수를 출력
select bookname as '제목', char_length(bookname) as '문자수', length(bookname) as '바이트수'
	from book
    where publisher = '한빛아카데미';
    
-- Book 테이블에 새로운 속성 추가 (주문 날짜: orderdate(DATE 타입))
alter table book
	add column orderdate date;

-- 각 도서에 주문 날짜 데이터 추가 후, 목록을 출력
update Book set orderdate = '2024-05-12' where bookid = 100;
update Book set orderdate = '2024-05-04' where bookid = 101;
update Book set orderdate = '2024-06-02' where bookid = 102;
update Book set orderdate = '2024-06-06' where bookid = 103;
update Book set orderdate = '2024-06-10' where bookid = 104;
update Book set orderdate = '2024-04-12' where bookid = 105;
update Book set orderdate = '2024-03-15' where bookid = 106;
update Book set orderdate = '2024-05-12' where bookid = 107;
update Book set orderdate = '2024-06-07' where bookid = 108;
update Book set orderdate = '2024-04-26' where bookid = 109;
update Book set orderdate = '2024-05-28' where bookid = 110;

select * from Book;

-- 주문일로부터 10일 후 매출을 확정한다고 할 때, 각 주문의 확정 일자를 계산

select bookid as '주문번호', orderdate as '주문일자', adddate(orderdate, 10) as '확정일자' from Book;


select * from Book;