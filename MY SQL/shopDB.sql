drop database shopDB;

CREATE DATABASE ShopDB;
USE ShopDB;

-- CREATE TABLE Product(
-- 	pCode VARCHAR(10),
--     pName VARCHAR(20),
--     price INT,
--     amount INT
-- )

INSERT INTO Product VALUES ('p0001', '노트북', 1000000, 3);
INSERT INTO Product VALUES ('p0002', '마우스', 10000, 20);
INSERT INTO Product VALUES ('p0003', '키보드', 30000, 15);
INSERT INTO Product VALUES ('p0004', '모니터', 500000, 10);
INSERT INTO Product VALUES ('p0005', '본체', 2000000, 10); 
INSERT INTO Product VALUES ('p0006', '올인원', 2000000, 5);

select * from Product; -- vsCode에서 추가하고 수정한 값들 확인