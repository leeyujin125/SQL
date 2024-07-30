CREATE DATABASE saleDB;
USE saleDB;

CREATE TABLE customer(
	아이디 varchar(20) primary key,
    이름 varchar(10),
    나이 int,
    등급 varchar(10),
    직업 varchar(20),
    적립금 int default 0
);

CREATE TABLE product(
	제품번호 char(3) primary key,
    제품명 varchar(20),
    재고량 int,
    단가 int,
    제조업체 varchar(20)
);

CREATE TABLE orders(
	주문번호 char(3) primary key,
    주문고객 varchar(20),
    주문제품 char(3),
    수량 int,
    배송지 varchar(30),
    주문일자 date,
    foreign key(주문고객) references customer(아이디),
    foreign key(주문제품) references product(제품번호)
);

INSERT INTO customer VALUES ('apple', '정소화', 20, 'gold', '학생', 1000);
INSERT INTO customer VALUES ('banana', '김선우', 25, 'vip', '간호사', 2500);
INSERT INTO customer VALUES ('carrot', '고명석', 28, 'gold', '교사', 4500);
INSERT INTO customer VALUES ('orange', '김용욱', 22, 'silver', '학생', 0);
INSERT INTO customer VALUES ('melon', '성원용', 35, 'gold', '회사원', 5000);
INSERT INTO customer VALUES ('peach', '오형준', NULL, 'silver', '의사', 300);
INSERT INTO customer VALUES ('pear', '채광주', 31, 'silver', '회사원', 500);

INSERT INTO product VALUES('p01', '그냥만두', 5000, 4500, '대한식품');
INSERT INTO product VALUES('p02', '매운쫄면', 2500, 5500, '민국푸드');
INSERT INTO product VALUES('p03', '쿵떡파이', 3600, 2600, '한빛제과');
INSERT INTO product VALUES('p04', '맛난초콜릿', 1250, 2500, '한빛제과');
INSERT INTO product VALUES('p05', '얼큰라면', 2200, 1200, '대한식품');
INSERT INTO product VALUES('p06', '통통우동', 1000, 1550, '민국푸드');
INSERT INTO product VALUES('p07', '달콤비스킷', 1650, 1500, '한빛제과');

INSERT INTO orders VALUES('o01', 'apple', 'p03', 10, '서울시 마포구', '2022-01-01');
INSERT INTO orders VALUES('o02', 'melon', 'p01', 5, '인천시 계양구', '2022-01-10');
INSERT INTO orders VALUES('o03', 'banana', 'p06', 45, '경기도 부천시', '2022-01-11');
INSERT INTO orders VALUES('o04', 'carrot', 'p02', 8, '부산시 금정구', '2022-02-01');
INSERT INTO orders VALUES('o05', 'melon', 'p06', 36, '경기도 용인시', '2022-02-20');
INSERT INTO orders VALUES('o06', 'banana', 'p01', 19, '충청북도 보은군 마포구', '2022-03-02');
INSERT INTO orders VALUES('o07', 'apple', 'p03', 22, '서울시 영등포구', '2022-03-15');
INSERT INTO orders VALUES('o08', 'pear', 'p02', 50, '강원도 춘천시', '2022-04-10');
INSERT INTO orders VALUES('o09', 'banana', 'p04', 15, '전라남도 목포시', '2022-04-11');
INSERT INTO orders VALUES('o10', 'carrot', 'p03', 20, '경기도 안양시', '2022-05-22');

-- 3. 고객 테이블에서 검색

-- 3-1. 고객 테이블에서 아이디, 이름, 등급 검색
select 아이디, 이름, 등급 from customer;

-- 3-2. 고객 테이블에서 성이 김씨인 고객의 이름, 나이, 등급, 적립금을 검색
select 이름, 나이, 등급, 적립금 from customer where 이름 like '김%';

-- 3-3. 고객 테이블에서 아이디가 5자인 고객의 아이디, 이름, 등급을 검색
select 아이디, 이름, 등급 from customer where 아이디 like '_____';

-- 3-4. 고객 테이블에서 나이가 아직 입력되지 않은 고객의 이름을 검색 (IS 키워드 사용)
select 이름 from customer where 나이 is null;

-- 3-5. 고객 테이블에서 나이가 이미 입력된 고객의 이름을 검색
select 이름 from customer where 나이 is not null;

-- 3-6. 고객 테이블에서 이름, 등급, 나이를 검색하되, 나이를 기준으로 내림차순 정렬
select 이름, 등급, 나이 from customer order by 나이 desc;

-- 3-7. 고객 테이블에 고객이 몇 명 등록되어 있는지 검색
select count(*) as '고객수' from customer;

-- 3-8. 고객 테이블에서 적립금 평균이 1,000원 이상인 등급에 대해 등급별 고객수와 적립금 평균을 검색
select 등급, count(등급) as '고객수' , avg(적립금) as '평균적립금' from customer group by 등급 having avg(적립금) >= 1000;


-- 4. 제품 및 주문 테이블에서 검색

-- 4-1. 제품 테이블에서 제조업체를 중복을 제거하여 검색
select distinct 제조업체 from product;

-- 4-2. 제품 테이블에서 제품명과 단가를 검색하되, 단가에 500원을 더해 '조정 단가'라는 새 이름으로 검색
select 제품명, 단가 + 500 as '조정 단가' from product;

-- 4-3. 제품 테이블에서 한빛제과가 제조한 제춤의 제품명, 재고량, 단가를 검색
select 제품명, 재고량, 단가 from product where 제조업체 = '한빛제과';

-- 4-4. 주문 테이블에서 apple 고객이 15개 이상 주문한 주문제품, 수량, 주문일자를 검색
select 주문제품, 수량, 주문일자 from orders where 주문고객 = 'apple' and 수량 > 15;

-- 4-5. 제품 테이블에서 모든 제품의 단가 평균을 검색
select avg(단가) as '단가' from product;

-- 4-6. 제조업체 별로 제품의 개수와 가장 비싼 단가를 검색
select 제조업체, count(제품명) as '제품수', max(단가) as '최고가' from product group by 제조업체;

-- 4-7. 제품을 3개 이상 제조한 제조업체의 제품의 개수와 가장 비싼 단가를 검색
select 제조업체, count(제품명) as '제품수', max(단가) as '최고가' from product group by 제조업체 having count(제품명) >= 3;


-- 5. 외래키 이용

-- 5-1. banana 고객이 주문한 제품의 이름을 검색
select product.제품명
	from orders, product
    where orders.주문고객 = 'banana'
    and
    orders.주문제품 = product.제품번호;
    
-- 5-2. 나이가 30세 이상인 고객이 주문한 제품의 번호와 주문일자를 검색
select orders.주문제품, orders.주문일자
	from customer, orders
    where customer.나이 >= 30
    and
    customer.아이디 = orders.주문고객;

-- 5-3. 제조업체 별 총 주문 수량을 검색 (제품 상관없음)
select product.제조업체, sum(orders.수량) as '주문수량'
	from product
    join orders on product.제품번호 = orders.주문제품
    group by product.제조업체;
    
-- 5-4. 고객 별 주문 총 수량을 검색
select customer.이름, sum(orders.수량) as '주문수량'
	from customer
    join orders on customer.아이디 = orders.주문고객
    group by customer.이름;
    
-- 5-5. 가격이 4500 원인 제품을 주문한 고객의 이름과 제품명을 검색
select customer.이름, product.제품명
	from customer
    join orders on customer.아이디 = orders.주문고객
    join product on product.제품번호 = orders.주문제품
    where product.단가 = 4500;
    
-- 5-6. 고객의 이름과 고객이 주문한 제품의 이름을 검색 (고객의 이름을 정렬하여 출력)
select customer.이름, product.제품명
	from customer
    join orders on customer.아이디 = orders.주문고객
    join product on product.제품번호 = orders.주문제품
    order by customer.이름 asc;
    
-- 5-7. 고객 정보 및 주문 정보에 관한 데이터를 고객별로 정렬하여 출력
select customer.*, orders.*, product.*
	from customer
    join orders on customer.아이디 = orders.주문고객
    join product on product.제품번호 = orders.주문제품
    order by customer.이름 asc;
    