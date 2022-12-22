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
select count(manager_id) from worker; -- null���� ����ִ� Į���� ī��Ʈ �ȵ�.
select count(*), count(manager_id) from worker; 

-- sum()
select sum(salary) from worker; -- sum�� ������ Į������ �����.

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

-- commission_pct�� �ο���
select commission_pct, count(*) 
from worker
group by commission_pct;

-- commission_pct�� null�� ���� ���� 
select commission_pct, count(*) 
from worker
where commission_pct is not null
group by commission_pct;

-- commission_pct�� ��������� ���
select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct;

select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct
order by commission_pct;

-- order by (��������)
select commission_pct, to_char(avg(salary), '99,999.99')
from worker
where commission_pct is not null
group by commission_pct
order by avg(salary);

-- order by �÷��� desc(��������)
select * from worker order by salary desc;

--
select * from customers;

-- ������ ���� 
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

-- �빮�ڸ� �ҹ��ڷ� ���� (lower)
select * from customers;
select lower(cust_marital_status), count(*)
from customers
group by lower(cust_marital_status);

-- ��ȥ���κ� ����, ���ĺ������� ����
select * from customers;
select cust_marital_status, count(*)
from customers
group by cust_marital_status
order by cust_marital_status;

-- ����⵵�� ����
select * from customers;
select cust_year_of_birth, count(*)
from customers
group by cust_year_of_birth
order by cust_year_of_birth;

-- ����⵵��, ���� ����
select * from customers;
select cust_year_of_birth, cust_gender, count(*)
from customers
group by cust_year_of_birth, cust_gender
order by cust_year_of_birth, cust_gender;

-- �̸� ù�ڰ� ���� ����� ������� ��ȸ.
-- select substr(emp_name,1,1) one from worker order by one;
select * from worker;

select substr(emp_name,1,1) one, count(*)
from worker
group by substr(emp_name,1,1)
order by one;

-- ���޴뺰 �ο��� (2000�� ���, 3000�� ���, 4000�� ���...)
select * from worker;

select floor(salary/1000)*1000 zone, count(*) cnt
from worker
group by floor(salary/1000)*1000
order by zone;

--
--
-- ���տ�����
create table exp_goods_asia(
country varchar2(10),
seq number,
goods varchar2(30)
);
desc exp_goods_asia;

insert into exp_goods_asia values('�ѱ�',1,'�������� ������');
insert into exp_goods_asia values('�ѱ�',2,'�ڵ���');
insert into exp_goods_asia values('�ѱ�',3,'��������ȸ��');
insert into exp_goods_asia values('�ѱ�',4,'����');
insert into exp_goods_asia values('�ѱ�',5,'LCD');
insert into exp_goods_asia values('�ѱ�',6,'�ڵ�����ǰ');
insert into exp_goods_asia values('�ѱ�',7,'�޴���ȭ');
insert into exp_goods_asia values('�ѱ�',8,'ȯ��źȭ����');
insert into exp_goods_asia values('�ѱ�',9,'�����۽ű� ���÷��� �μ�ǰ');
insert into exp_goods_asia values('�ѱ�',10,'ö �Ǵ� ���ձݰ�');

insert into exp_goods_asia values('�Ϻ�',1,'�ڵ���');
insert into exp_goods_asia values('�Ϻ�',2,'�ڵ�����ǰ');
insert into exp_goods_asia values('�Ϻ�',3,'��������ȸ��');
insert into exp_goods_asia values('�Ϻ�',4,'����');
insert into exp_goods_asia values('�Ϻ�',5,'�ݵ�ü������');
insert into exp_goods_asia values('�Ϻ�',6,'ȭ����');
insert into exp_goods_asia values('�Ϻ�',7,'�������� ������');
insert into exp_goods_asia values('�Ϻ�',8,'�Ǽ����');
insert into exp_goods_asia values('�Ϻ�',9,'���̿���,Ʈ��������');
insert into exp_goods_asia values('�Ϻ�',10,'����');
select * from exp_goods_asia;

select * from exp_goods_asia;
--order by goods;

-- ������ intersect
select goods from exp_goods_asia where country = '�ѱ�'
intersect
select goods from exp_goods_asia where country = '�Ϻ�';

-- ������ union
select goods from exp_goods_asia where country = '�ѱ�'
union
select goods from exp_goods_asia where country = '�Ϻ�';

select goods from exp_goods_asia where country = '�ѱ�'
union all
select goods from exp_goods_asia where country = '�Ϻ�'
order by goods;

-- ������ minus

-- �ѱ����� �ִ� ��
select goods from exp_goods_asia where country = '�ѱ�'
minus
select goods from exp_goods_asia where country = '�Ϻ�';

-- �Ϻ����� �ִ� ��
select goods from exp_goods_asia where country = '�Ϻ�'
minus
select goods from exp_goods_asia where country = '�ѱ�';

-- ������ - ������
select goods from exp_goods_asia where country = '�ѱ�'
union
select goods from exp_goods_asia where country = '�Ϻ�'
minus
(select goods from exp_goods_asia where country = '�ѱ�'
intersect
select goods from exp_goods_asia where country = '�Ϻ�');

--
--
--
--

-- ����, Join

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

-- worker���̺��� �������� �ؼ� ���� ==> �����(worker.emp_name), ������(jobs.job_title)
select * from worker;
select * from jobs;

select worker.emp_name, jobs.job_title
from worker, jobs
where worker.job_id = jobs.job_id;

-- distinct ������, ������ (��ǥ���� ����)
select * from sales;
select prod_id from sales;
select distinct prod_id from sales;
select distinct prod_id from sales order by prod_id;

-- roominfo�� ��� �÷��� ǥ��(type�� roomtypename���� ǥ��)
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

insert into roominfo values(101, '������', 2, 7, 1500);
insert into roominfo values(102, '���ǻ�', 4, 8, 1800);
insert into roominfo values(103, '�Ѷ��', 3, 5, 1600);

select a.num, a.name, b.typename, a.howmany, a.howmuch
from roominfo a, roomtype b
where a.type = b.typenum;

-- sales���̺��� prod_id�� product_name���� �ٲ۴�.(by Join with Products ���̺�)
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

-- Ȯ�ι��.
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
-- ����Join�� group by�� ������ ����.
select * from sales;
select * from products;
select * from employees;


select b.prod_name, to_char(sum(amount_sold), '9,999,999,999.99')
from sales a, products b
where a.prod_id = b.prod_id
group by b.prod_name
order by b.prod_name;
 
-- ���, �����
select employee_id, sum(amount_sold)
from sales
group by employee_id
order by employee_id;

-- ������, �����
select b.emp_name, sum(amount_sold)
from sales a, employees b
where a.employee_id = b.employee_id
group by b.emp_name
order by b.emp_name;

-- (���)������, �����
select b.employee_id, b.emp_name, sum(amount_sold)
from sales a, employees b
where a.employee_id = b.employee_id
group by b.employee_id, b.emp_name
order by b.employee_id, b.emp_name;


-- 22. 12.2
--
--

-- self Join �������� ==> �ڱ� ���̺��� Join�Ѵ�.�����Ѵ�. 
select * from employees;

-- ���, �̸�, �Ŵ����̸�.
select * from employees;

select a.employee_id, a.emp_name, b.emp_name manager_name --alias
from employees a, employees b
where a.manager_id = b.employee_id
order by a.employee_id, a.emp_name;

-- ���, �̸�, �Ŵ����̸�, �����μ���.
select * from employees;
select * from departments;

select a.employee_id, a.emp_name, b.emp_name manager_name, c.department_name
from employees a, employees b, departments c
where a.manager_id = b.employee_id 
and a.manager_id = c.manager_id
order by a.employee_id, a.emp_name;

-- �μ��ڵ�, �μ���, �����μ���. (dempartments)
select * from departments;

select a.department_id, a.department_name, b.department_name parent_name
from departments a, departments b
where a.parent_id = b.department_id
order by a.department_id;


-- sub-Query ��������

select a.employee_id, a.emp_name, a.salary, b.department_name
from employees a, departments b
where a.department_id = b.department_id and a.salary > 6000
order by a.employee_id;

-- ���� �ִ� �ſ� �Ƚ����ι������� ǥ��. 
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

-- ���, �̸�, �Ŵ����̸�, �μ���, �μ����
select * from employees;
select * from departments;


select a.employee_id, a.emp_name, b.emp_name manager_name, c.department_name, d.emp_name
from employees a, employees b, departments c, employees d
where a.manager_id = b.employee_id 
and a.department_id = c.department_id 
and c.manager_id = d.employee_id
order by a.emp_name; 


-- �μ���, �ο���.

select b.department_name, count(*)
from employees a, departments b
where a.department_id = b.department_id
group by b.department_name
order by b.department_name;


-- �μ���, �ο���
select * from employees;
select * from departments;

select c.emp_name, count(*)
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.manager_id = c.employee_id
group by c.emp_name
order by c.emp_name;


-- �μ���, �μ���, �ο���
select * from employees;
select * from departments;

select b.department_name, c.emp_name captain, count(*)
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.manager_id = c.employee_id
group by b.department_name, c.emp_name
order by b.department_name, c.emp_name;

-- �μ���, �ο���, �����Ѿ�
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
-- �ܺ����� Outer Join - �������� �������� 

--select a.�̸�, b.�μ���
--from A a, B b
--where a.�μ��ڵ� = b.�μ��ڵ�

--select a.�̸�, b.�μ���
--from A a, B b
--where a.�μ��ڵ� = b.�μ��ڵ�(+) ==> Left Outer Join

select * from employees;

select a.employee_id, a.emp_name, b.emp_name manager_name
from employees a, employees b
where a.manager_id = b.employee_id(+);


select * from departments;

select a.department_id, a.department_name, b.department_name parent_name
from departments a, departments b
where a.parent_id = b.department_id(+);

-- My SQL������ �ƿ������� �Ƚ����ι��� �����.
select a.department_id, a.department_name, b.department_name parent_name
from departments a left outer join departments b
on a.parent_id = b.department_id;


--
--
-- sub-Query ��������

--create view v_six as select * from emplotees where salary > 6000;
--select ;


select avg(salary) from employees;

select emp_name, salary from employees where salary > (select avg(salary) from employees)
order by salary; -- ==> subquery���� oder by�� ����� �� ����.

-- ������, �μ���, �μ���.
select a.emp_name, b.department_name, c.emp_name captain
from employees a, departments b, employees c
where a.department_id = b.department_id
and b.department_name like '%��'
and b.manager_id = c.employee_id(+);


-- sub-Query ��������

-- ������, �μ���, �μ��� sub-Query �ٲٱ�.
select * from employees;
select * from departments;

-- employees�� departments ���� ..
select x.emp_name, x.department_name, c.emp_name captain_name
from (
select a.emp_name, b.department_name, a.manager_id
from employees a, departments b 
where a.department_id = b.department_id 
and b.department_name like '%��') x, employees c
where x.manager_id = c.employee_id(+);

-- where�� sub-Query �ֱ�
select a.emp_name, b.department_name, c.emp_name captain
from employees a, departments b, employees c
where a.department_id in(
select department_id
from departments 
where department_name like '%��')
and a.department_id = b.department_id(+)
and b.manager_id = c.employee_id(+);


-- departments�� employees ���� ..
select a.emp_name, x.department_name, x.captain
from employees a, (
select b.department_id, b.department_name, c.emp_name captain
from departments b, employees c
where b.department_name like '%��'
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
