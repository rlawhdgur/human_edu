select * from worker;
-- (asterisk) from worker;

select employee_id, emp_name, salary, commission_pct
from worker;

--
select employee_id, emp_name, salary, commission_pct,
(salary * (1 + commission_pct / 100))
from worker;

-- 
select employee_id, emp_name, salary, commission_pct,
to_char(salary * (1 + commission_pct / 100), '99999.99')
from worker where commission_pct is not null;

--
select employee_id eid, emp_name, salary, commission_pct pct,
to_char(salary * (1 + commission_pct / 100), '99999.99') final_salary
from worker where commission_pct is not null;

-- count()
select count(*) from worker;
select count(manager_id) from worker; -- null값이 들어있는 칼럼은 카운트 안됨.
select count(*), count(manager_id) from worker; 

-- sum()
select sum(salary) from worker; -- sum은 무조건 칼럼명을 써야함.

-- avg()
select avg(salary) from worker;
select to_char(avg(salary),'99,999.99') from worker;

-- min()
select min(salary) from worker;
-- max()
select max(salary) from worker;

-- group by
select manager_id, count(*), sum(salary), to_char(avg(salary),'99,999.99')
from worker
group by manager_id;

select manager_id, count(*) cnt, sum(salary) total, to_char(avg(salary),'99,999.99') avg_sal
from worker
group by manager_id;

select department_id, count(*) 
from worker 
group by department_id;

-- having 
select department_id, count(*) 
from worker 
group by department_id
having count(*)>1;

select department_id, count(*) cnt
from worker 
group by department_id
having count(*)>1
order by cnt;

select department_id, count(*) cnt
from worker 
group by department_id
having count(*)>1
order by cnt desc; 

-- commission_pct별 인원수
select commission_pct, count(*) 
from worker
group by commission_pct;

-- commission_pct가 null인 값은 빼는 
select commission_pct, count(*) 
from worker
where commission_pct is not null
group by commission_pct;

-- commission_pct가 같은사람의 평균
select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct;

select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct
order by commission_pct;

-- order by (오름차순)
select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct
order by avg(salary);

-- order by 컬럼명 desc(내림차순)
select * from worker order by salary desc;

--
select * from customers;

-- 성별별 고객수 
select * from customers;
select cust_gender, count(*)
from customers
group by cust_gender;

select count(*)
from customers 
where cust_gender='M';

select count(*)
from customers 
where cust_gender='F';

select cust_marital_status, count(*)
from customers
group by cust_marital_status;

-- 대문자를 소문자로 변경 (lower)
select * from customers;
select lower(cust_marital_status), count(*)
from customers
group by lower(cust_marital_status);

-- 결혼여부별 고객수, 알파벳순으로 정렬
select * from customers;
select cust_marital_status, count(*)
from customers
group by cust_marital_status
order by cust_marital_status;

-- 출생년도별 고객수
select * from customers;
select cust_year_of_birth, count(*)
from customers
group by cust_year_of_birth
order by cust_year_of_birth;

-- 출생년도별, 성별 고객수
select * from customers;
select cust_year_of_birth, cust_gender, count(*)
from customers
group by cust_year_of_birth, cust_gender
order by cust_year_of_birth, cust_gender;

-- 이름 첫자가 같은 사람이 몇명인지 조회.
-- select substr(emp_name,1,1) one from worker order by one;
select * from worker;

select substr(emp_name,1,1) one, count(*)
from worker
group by substr(emp_name,1,1)
order by one;

-- 월급대별 인원수 (2000불 몇명, 3000불 몇명, 4000불 몇명...)
select * from worker;

select floor(salary/1000)*1000 zone, count(*) cnt
from worker
group by floor(salary/1000)*1000
order by zone;

--
--
-- 집합연산자
create table exp_goods_asia(
country varchar2(10),
seq number,
goods varchar2(30)
);
desc exp_goods_asia;

insert into exp_goods_asia values('한국',1,'원유제외 석유류');
insert into exp_goods_asia values('한국',2,'자동차');
insert into exp_goods_asia values('한국',3,'전자집적회로');
insert into exp_goods_asia values('한국',4,'선박');
insert into exp_goods_asia values('한국',5,'LCD');
insert into exp_goods_asia values('한국',6,'자동차부품');
insert into exp_goods_asia values('한국',7,'휴대전화');
insert into exp_goods_asia values('한국',8,'환식탄화수소');
insert into exp_goods_asia values('한국',9,'무선송신기 디스플레이 부속품');
insert into exp_goods_asia values('한국',10,'철 또는 비합금강');

insert into exp_goods_asia values('일본',1,'자동차');
insert into exp_goods_asia values('일본',2,'자동차부품');
insert into exp_goods_asia values('일본',3,'전자집적회로');
insert into exp_goods_asia values('일본',4,'선박');
insert into exp_goods_asia values('일본',5,'반도체웨이퍼');
insert into exp_goods_asia values('일본',6,'화물차');
insert into exp_goods_asia values('일본',7,'원유제외 석유류');
insert into exp_goods_asia values('일본',8,'건설기계');
insert into exp_goods_asia values('일본',9,'다이오드,트랜지스터');
insert into exp_goods_asia values('일본',10,'기계류');
select * from exp_goods_asia;

select * from exp_goods_asia;
--order by goods;

-- 교집합 intersect
select goods from exp_goods_asia where country = '한국'
intersect
select goods from exp_goods_asia where country = '일본';

-- 합집합 union
select goods from exp_goods_asia where country = '한국'
union
select goods from exp_goods_asia where country = '일본';

select goods from exp_goods_asia where country = '한국'
union all
select goods from exp_goods_asia where country = '일본'
order by goods;

-- 차집합 minus

-- 한국에만 있는 것
select goods from exp_goods_asia where country = '한국'
minus
select goods from exp_goods_asia where country = '일본';

-- 일본에만 있는 것
select goods from exp_goods_asia where country = '일본'
minus
select goods from exp_goods_asia where country = '한국';

-- 합집합 - 교집합
select goods from exp_goods_asia where country = '한국'
union
select goods from exp_goods_asia where country = '일본'
minus
(select goods from exp_goods_asia where country = '한국'
intersect
select goods from exp_goods_asia where country = '일본');

--
--
--
--

-- 조인, Join

select * from worker;
select * from departments;
select * from jobs;
select * from sales;
 
select worker.employee_id, worker.emp_name, departments.department_name
from worker, departments
where worker.department_id = departments.department_id;

select a.employee_id, a.emp_name, b.department_name
from worker a, departments b    -- alias name
where a.department_id = b.department_id;

-- worker테이블을 기준으로 해서 조인 ==> 사원명(worker.emp_name), 직위명(jobs.job_title)
select * from worker;
select * from jobs;

select worker.emp_name, jobs.job_title
from worker, jobs
where worker.job_id = jobs.job_id;

-- distinct 각각의, 별개의 (대표값만 보기)
select * from sales;
select prod_id from sales;
select distinct prod_id from sales;
select distinct prod_id from sales order by prod_id;

-- roominfo의 모든 컬럼을 표시(type은 roomtypename으로 표시)
select * from roomtype;
desc roomtype;

--create table roominfo(
--num varchar2(10) primary key,
--name varchar2(20) not null,
--type number(3),
--howmany number(3) default 1,
--howmuch number(6) default 0,
--constraint fk_typenum foreign key(type) references roomtpe(typenum)
--);
--
--desc roominfo;
--select * from roominfo;

insert into roominfo values(101, '지리산', 2, 7, 1500);
insert into roominfo values(102, '설악산', 4, 8, 1800);
insert into roominfo values(103, '한라산', 3, 5, 1600);

select a.num, a.name, b.typename, a.howmany, a.howmuch
from roominfo a, roomtype b
where a.type = b.typenum;

-- sales테이블의 prod_id를 product_name으로 바꾼다.(by Join with Products 테이블)
-- (prod_id) prod_name, cust_id, channel_id, employee_id
select * from sales;
select * from products;
select * from customers;
select * from channels;

select products.prod_name, sales.cust_id, sales.channel_id, sales.employee_id
from sales, products
where sales.prod_id = products.prod_id;

--
select b.prod_name, c.cust_name, a.channel_id, a.employee_id
from sales a, products b, customers c
where a.prod_id = b.prod_id and a.cust_id = c.cust_id;

--
select b.prod_name, c.cust_name, d.channel_desc, a.employee_id
from sales a, products b, customers c, channels d
where a.prod_id = b.prod_id and a.cust_id = c.cust_id and a.channel_id = d.channel_id;

-- 확인방법.
select count(*) --b.prod_name, c.cust_name, d.channel_desc, a.employee_id
from sales a, products b, customers c, channels d
where a.prod_id = b.prod_id and a.cust_id = c.cust_id and a.channel_id = d.channel_id;

--
select b.prod_name, c.cust_name, d.channel_desc, e.emp_name
from sales a, products b, customers c, channels d, employees e
where a.prod_id = b.prod_id and a.cust_id = c.cust_id and a.channel_id = d.channel_id
and a.employee_id = e.employee_id;

--
select count(*) from sales where employee_id not in (select employee_id from employees);

--
select b.prod_name, c.cust_name, d.channel_desc, e.emp_name, f.department_name
from sales a, products b, customers c, channels d, employees e, departments f
where a.prod_id = b.prod_id and a.cust_id = c.cust_id and a.channel_id = d.channel_id
and a.employee_id = e.employee_id and e.department_id = f.department_id;

--
--
-- 조인Join과 group by가 합쳐진 내용.
select * from sales;
select * from products;
select * from employees;


select b.prod_name, to_char(sum(amount_sold), '9,999,999,999.99')
from sales a, products b
where a.prod_id = b.prod_id
group by b.prod_name
order by b.prod_name;
 
-- 사번, 매출액
select employee_id, sum(amount_sold)
from sales
group by employee_id
order by employee_id;

-- 직원명, 매출액
select b.emp_name, sum(amount_sold)
from sales a, employees b
where a.employee_id = b.employee_id
group by b.emp_name
order by b.emp_name;

-- (사번)직원명, 매출액
select b.employee_id, b.emp_name, sum(amount_sold)
from sales a, employees b
where a.employee_id = b.employee_id
group by b.employee_id, b.emp_name
order by b.employee_id, b.emp_name;


-- 22. 12.2
--
--

-- self Join 셀프조인 ==> 자기 테이블을 Join한다.참조한다. 
select * from employees;

-- 사번, 이름, 매니저이름.
select * from employees;

select a.employee_id, a.emp_name, b.emp_name manager_name --alias
from employees a, employees b
where a.manager_id = b.employee_id
order by a.employee_id, a.emp_name;

-- 사번, 이름, 매니저이름, 상위부서명.
select * from employees;
select * from departments;

select a.employee_id, a.emp_name, b.emp_name manager_name, c.department_name
from employees a, employees b, departments c
where a.manager_id = b.employee_id 
and a.manager_id = c.manager_id
order by a.employee_id, a.emp_name;

-- 부서코드, 부서명, 상위부서명. (dempartments)
select * from departments;

select a.department_id, a.department_name, b.department_name parent_name
from departments a, departments b
where a.parent_id = b.department_id
order by a.department_id;


-- sub-Query 서브쿼리

select a.employee_id, a.emp_name, a.salary, b.department_name
from employees a, departments b
where a.department_id = b.department_id and a.salary > 6000
order by a.employee_id;

-- 위에 있는 거에 안시조인문법으로 표현. 
select a.employee_id, a.emp_name, a.salary, b.department_name
from employees a inner join departments b
on a.department_id = b.department_id 
where a.salary > 6000
order by a.employee_id;


select a.employee_id, a.emp_name, a.salary, b.department_name
from (select * from employees where salary > 6000) a , departments b    -- sub-Query
where a.department_id = b.department_id
order by a.employee_id;

select a.employee_id, a.emp_name, a.salary, b.department_name
from employees a, departments b
where a.department_id = b.department_id 
and a.employee_id in (select employee_id from employees where salary > 6000)
order by a.employee_id; -- ==> nseted Query

-- 사번, 이름, 매니저이름, 부서명, 부서장명
select * from employees;
select * from departments;


select a.employee_id, a.emp_name, b.emp_name manager_name, c.department_name, d.emp_name
from employees a, employees b, departments c, employees d
where a.manager_id = b.employee_id 
and a.department_id = c.department_id 
and c.manager_id = d.employee_id
order by a.emp_name; 


-- 부서명, 인원수.

select b.department_name, count(*)
from employees a, departments b
where a.department_id = b.department_id
group by b.department_name
order by b.department_name;


-- 부서장, 인원수
select * from employees;
select * from departments;

select c.emp_name, count(*)
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.manager_id = c.employee_id
group by c.emp_name
order by c.emp_name;


-- 부서명, 부서장, 인원수
select * from employees;
select * from departments;

select b.department_name, c.emp_name captain, count(*)
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.manager_id = c.employee_id
group by b.department_name, c.emp_name
order by b.department_name, c.emp_name;

-- 부서명, 인원수, 월급총액
select * from employees order by manager_id;
select * from departments;

select b.department_name, count(*), sum(salary)
from employees a, departments b
where a.department_id = b.department_id
group by b.department_name
order by b.department_name;

--
--
--
-- 외부조인 Outer Join - 데이터의 누락없이 

--select a.이름, b.부서명
--from A a, B b
--where a.부서코드 = b.부서코드

--select a.이름, b.부서명
--from A a, B b
--where a.부서코드 = b.부서코드(+) ==> Left Outer Join

select * from employees;

select a.employee_id, a.emp_name, b.emp_name manager_name
from employees a, employees b
where a.manager_id = b.employee_id(+);


select * from departments;

select a.department_id, a.department_name, b.department_name parent_name
from departments a, departments b
where a.parent_id = b.department_id(+);

-- My SQL에서는 아웃조인은 안시조인문법 써야함.
select a.department_id, a.department_name, b.department_name parent_name
from departments a left outer join departments b
on a.parent_id = b.department_id;


--
--
-- sub-Query 서브쿼리

--create view v_six as select * from emplotees where salary > 6000;
--select ;


select avg(salary) from employees;

select emp_name, salary from employees where salary > (select avg(salary) from employees)
order by salary; -- ==> subquery에는 oder by를 사용할 수 없다.

-- 직원명, 부서명, 부서장.
select a.emp_name, b.department_name, c.emp_name captain
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.department_name like '%부'
and b.manager_id = c.employee_id(+);


-- sub-Query 서브쿼리

-- 직원명, 부서명, 부서장 sub-Query 바꾸기.
select * from employees;
select * from departments;

-- employees와 departments 조인 ..
select x.emp_name, x.department_name, c.emp_name captain_name
from (
select a.emp_name, b.department_name, a.manager_id
from employees a, departments b 
where a.department_id = b.department_id 
and b.department_name like '%부') x, employees c
where x.manager_id = c.employee_id(+);

-- where에 sub-Query 넣기
select a.emp_name, b.department_name, c.emp_name captain
from employees a, departments b, employees c
where a.department_id in(
select department_id
from departments 
where department_name like '%부')
and a.department_id = b.department_id(+)
and b.manager_id = c.employee_id(+);


-- departments와 employees 조인 ..
select a.emp_name, x.department_name, x.captain
from employees a, (
select b.department_id, b.department_name, c.emp_name captain
from departments b, employees c
where b.department_name like '%부'
and b.manager_id = c.employee_id(+)) x
where a.department_id = x.department_id;

--select a.employee_id, a.emp_name, a.salary, b.department_name
--from (select * from employees where salary > 6000) a , departments b    -- sub-Query
--where a.department_id = b.department_id
--order by a.employee_id;

--
--
--
--
--
