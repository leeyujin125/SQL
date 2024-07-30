create table dept(
    deptno number(2) not null,
    dname varChar2(14),
    loc varChar2(13)
);

insert into dept(deptno, dname, loc) values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept(deptno, dname, loc) values(20, 'RESEARCH', 'DALLAS');
insert into dept(deptno, dname, loc) values(30, 'SALES', 'CHICAGO');
insert into dept(deptno, dname, loc) values(40, 'OPERATIONS', 'BOSTON');
insert into dept(deptno, dname, loc) values(33, 'developer', 'suwon');
insert into dept(deptno, dname, loc) values(22, 'coder', 'seoul');
insert into dept(deptno, dname, loc) values(11, 'designer', 'LA');

delete from dept;

select * from dept;


create table emp(
    empno number(4) not null,
    ename varChar2(10),
    job varChar2(9),
    mgr number(4),
    hiredate date,
    sal number(7,2),
    comm number(7,2),
    deptno number(2) not null
);


INSERT INTO EMP VALUES(7369,'SMITH','CLERK',7902, to_date('1980-12-17','yyyy-MM-dd') ,800,null,20);
 INSERT INTO EMP VALUES(7499,'ALLEN','SALESMAN',7698, to_date('1981-02-20','yyyy-MM-dd'),1600,300,30);
 INSERT INTO EMP VALUES(7521,'WARD','SALESMAN',7698, to_date('1981-02-22','yyyy-MM-dd'),1250,200,30);
 INSERT INTO EMP VALUES(7566,'JONES','MANAGER',7839, to_date('1981-04-02','yyyy-MM-dd'),2975,30,20);
 INSERT INTO EMP VALUES(7654,'MARTIN','SALESMAN',7698, to_date('1981-09-28','yyyy-MM-dd'),1250,300,30);
 INSERT INTO EMP VALUES(7698,'BLAKE','MANAGER',7839, to_date('1981-04-01','yyyy-MM-dd'),2850,null,30);
 INSERT INTO EMP VALUES(7782,'CLARK','MANAGER',7839, to_date('1981-06-01','yyyy-MM-dd'),2450,null,10);
 INSERT INTO EMP VALUES(7788,'SCOTT','ANALYST',7566, to_date('1982-10-09','yyyy-MM-dd'),3000,null,20);
 INSERT INTO EMP VALUES(7839,'KING','PRESIDENT',null, to_date('1981-11-17','yyyy-MM-dd'),5000,3500,10);
 
 INSERT INTO EMP VALUES(7844,'TURNER','SALESMAN',7698, to_date('1981-09-08','yyyy-MM-dd'),1500,0,30);
 INSERT INTO EMP VALUES(7876,'ADAMS','CLERK',7788, to_date('1983-01-12','yyyy-MM-dd'),1100,null,20);
 INSERT INTO EMP VALUES(7900,'JAMES','CLERK',7698, to_date('1981-10-03','yyyy-MM-dd') ,950,null,30);
 INSERT INTO EMP VALUES(7902,'FORD','ANALYST',7566, to_date('1984-11-05','yyyy-MM-dd') ,3000,null,20);
 INSERT INTO EMP VALUES(7934,'MILLER','CLERK',7782, to_date('1982-01-23','yyyy-MM-dd'),1300,null,10);
 insert into emp values( 8856, 'hong', 'sale', 7844,  sysdate, 1500, 30,30) ;
 insert into emp values( 8878, 'lee', 'sale', 7876,  sysdate, 8900, 150,20) ;
 insert into emp values( 9900, 'kim', 'model', 7839,  sysdate,  6500,0, 30) ;
 insert into emp values( 9934, 'goo', 'model', 7844,  sysdate,  8500, 210, 40) ;
 insert into emp values( 9935, 'gugu', 'teacher', 7839,  sysdate, 7500, 400, 33) ;
 commit ;
 
 create table salgrade (
    grade  number,
    losal  number,
    hisal  number
 );
commit ;

 INSERT INTO SALGRADE VALUES (1,700,1200);
 INSERT INTO SALGRADE VALUES (2,1201,1400);
 INSERT INTO SALGRADE VALUES (3,1401,2000);
 INSERT INTO SALGRADE VALUES (4,2001,3000);
 INSERT INTO SALGRADE VALUES (5,3001,4000);
 insert into salgrade  values(6, 4001, 6000 );
 insert into salgrade  values(7, 6001, 7000 );
 insert into salgrade  values(8, 7001, 9999 );
 commit;


  create table bonus
  as 
  select ename, job, sal, comm  from emp  ;
 
 commit ;
 select * from  bonus;
 select * from  salgrade ;
 select * from  dept ;
 select * from  emp ;

 select  empno, ename, mgr from  emp;
 select rownum,  e.* from  emp  e;
 commit ;
 
 drop  table  sosi ;

create  table  sosi ( 
       id  number(4)  primary key  ,
       name varchar2(10)  ,
       salary number  ,
       birth date  ,
       email varchar2(20)  ,
       grade  char(2) 
  ) ;
commit ;


 insert into sosi values(7799, 'naver', 978, sysdate, 'ps@mo.it', 'G');
 insert into sosi values(7773, 'daum', 92, sysdate, 'ha@mo.it', 'B');
 insert into sosi values(7754, 'naver', 978, sysdate, 'ps@mo.it', 'D');
 insert into sosi values(7712, 'daum', 81, sysdate, 'ks@mo.it', 'C');


insert into sosi values(7757, 'park', 37, sysdate, 'ok@ks.it', 'D'); 
insert into sosi  values(2000,'윤아',90,to_date('17/11/13', 'yyyy-MM-dd'), 'bb@girl.com', 'F');
insert into sosi values(3000,'제니',120,to_date('17/10/25' , 'yyyy-MM-dd'), 'cc@girl.com', 'C');
insert into sosi  values(4000, '수영', 90, sysdate, 'dd@girl.com', 'A');

insert into sosi values(3378, 'blue', 450, sysdate, 'bb@ra.org', 'A');
insert into sosi values(3399, 'city', 140, sysdate, 'cc@sn.net', 'C');
insert into sosi values(3345, 'rain', 370, sysdate,  'aa@it.com', 'D');
insert into sosi values(3311, 'cake', 450, sysdate, 'bb@ra.org', 'A');
commit;

insert into sosi values(5578, 'hong', 50, sysdate, 'hg@ra.org', 'A');
insert into sosi values(5599, 'kang', 40, sysdate, 'ng@sn.net', 'B');
insert into sosi values(5545, 'choi', 60, sysdate,  'ci@it.com', 'F');
insert into sosi values(5511, 'goo',  20, sysdate, 'go@ra.org', 'A');


insert into sosi  values(7000,'김고은',100,to_date('17/12/12','yyyy-MM-dd'), 'aa@girl.com', 'A');
insert into sosi  values(6000,'태연',100,to_date('19/12/12','yyyy-MM-dd'), 'ts@girl.com', 'A');
commit;






 insert  into sosi   values(6600, 'aaa', 24, sysdate, 'aa@gs.com', 'B');  
  insert  into sosi(id,name,salary,birth,email,grade)  values(5550, 'coff', 21, sysdate, 'co@gs.com', 'F'); 
  insert into sosi(id,name,salary,birth,email,grade)    values(9900, 'kim', 97, sysdate, 'bc@kt.com', 'F');


 insert  into sosi(id,name,salary,birth,email,grade)   values(7789, 'red', 79, sysdate, 'bc@kt.com', 'F');        
 insert  into sosi   values(7790, 'green', 23, sysdate, 'lee@lg.com', 'C'); 
 insert  into sosi   values(2234, 'orange', 96, sysdate, 'kim@it.org', 'A');
  commit;
  
insert into sosi values(2278, 'hong', 990, sysdate, 'hg@ra.org', 'A');
insert into sosi values(2299, 'kang', 47, sysdate, 'ng@sn.net', 'C');
insert into sosi values(2245, 'gg', 60, sysdate,  'ci@it.com', 'D');
insert into sosi values(2211, 'orange',  19, sysdate, 'go@ra.org', 'A');
insert into sosi values(2221, 'hong', 31, sysdate, 'hg@ra.org', 'A');
insert into sosi values(2223, 'kang', 140, sysdate, 'ng@sn.net', 'C');
insert into sosi values(2224, 'desk', 660, sysdate,  'ci@it.com', 'F');
insert into sosi values(2225, 'card',  780, sysdate, 'go@ra.org', 'D');

commit;

desc sosi;

alter table sosi drop(email);
alter table sosi add(hit number(3) default 0);
alter table sosi rename column birth to wdate;
alter table sosi rename column salary to sal;

desc sosi;

alter table sosi modify(grade Char(5));

desc sosi;

select * from sosi;

select ename, sal, job, deptno
    from emp
    where deptno in (10, 20)
intersect
select ename, sal, job, deptno
    from emp
    where deptno in (20, 30);