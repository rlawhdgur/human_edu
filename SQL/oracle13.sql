-- code block
-- �̸��� �Ⱥ����� �͸�(anonymous, unnamed)
-- �Ľ�Į ���.

-- ���� Type.
declare
 vi_num NUMBER;
begin
 vi_num := 100;
 dbms_output.put_line(vi_num); --System.out.println()
end;
/
set serveroutput on;

-- ���� Type.
declare
 vi_num char(20);
begin
 vi_num := 'Hello World';
 dbms_output.put_line(vi_num); --System.out.println()
end;
/

-- �������.
declare
 vi_num char(20);
 pi CONSTANT number:= 3.14; -- �Ľ�Į
-- final static pi=3.14; -- �ڹ�
-- const pi = 3.14; -- �ڹٽ�ũ��Ʈ
begin
 vi_num := 'Hello World';
 dbms_output.put_line(vi_num); --System.out.println()
end;
/

-- 
declare
 vi_num number;
begin
 vi_num := 100;
 dbms_output.put_line(vi_num); --System.out.println()
end;
/

-- ����.
declare
 vi_num number;
 pi CONSTANT number:= 3.14; -- �Ľ�Į
begin
 vi_num := 100;
 dbms_output.put_line(3**4); --System.out.println()
end;
/

-- DML��.
select * from employees;
declare
 v_employee_id employees.employee_id%type;
 vs_emp_name employees.emp_name%type;
begin
 select employee_id, emp_name
 into v_employee_id, vs_emp_name
 from employees where employee_id = 124;
 dbms_output.put_line('��� = ' || to_char(v_employee_id) || ', �̸� = '||vs_emp_name);
  
end;
/

-- departments���̺��� �μ�ID�� 80���� �μ���, �μ������� ���. 
select * from departments;
select * from departments where department_id = 80;

declare
 v_department_name departments.department_name%type;
 v_manager_id departments.manager_id%type;
begin
 select department_name, manager_id
 into v_department_name, v_manager_id
 from departments 
 where department_id = 80;
 dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ����� = ' || to_char(v_manager_id));
end;
/

-- �͸� ��Ͽ��� �����ϱ�.  
-- �Ʒ��ִ� ������ �͸����� �̿��Ͽ� �����ϱ�.
select a.department_name, b.emp_name manager_name
from departments a, employees b
where a.department_id = 80
and a.manager_id = b.employee_id;

select * from departments;
select * from employees;

declare
 v_department_name departments.department_name%type;
 v_manager_name employees.emp_name%type;
begin
 select a.department_name, b.emp_name manager_name
 into v_department_name, v_manager_name
 from departments a, employees b
 where a.department_id = 80
 and a.manager_id = b.employee_id;
 dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ����̸� = ' || v_manager_name);
end;
/

-- ������ �Ⱦ��� ���ξ��� ��.
select * from departments;
select * from employees;

declare
 v_department_name departments.department_name%type;
 v_manager_id departments.manager_id%type;
 m_name employees.emp_name%type;
begin
 select department_name, manager_id
 into v_department_name, v_manager_id
 from departments 
 where department_id = 80;
 
 select emp_name 
 into m_name
 from employees
 where employee_id = v_manager_id;
 dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ��� �̸� = ' || m_name);
end;
/

-- PL / SQL ���.
-- if else.
declare
 vn_salary employees.salary%type;
 vn_did employees.department_id%type;
begin
 vn_did :=round(dbms_random.value(10, 110), -1);
 select salary
 into vn_salary
 from employees
 where department_id = vn_did
 and rownum = 1;
 
 if vn_salary between 1 and 3000 then
    dbms_output.put_line(to_char(vn_salary) || ' = low');
 elsif vn_salary between 3001 and 6000 then   
        dbms_output.put_line(to_char(vn_salary) || ' = middle');
 elsif vn_salary between 6001 and 10000 then   
        dbms_output.put_line(to_char(vn_salary) || ' = high');     
 else      
    dbms_output.put_line(to_char(vn_salary) || ' = super');
 end if;
end;
/

-- case 
declare
 vn_salary employees.salary%type;
 vn_did employees.department_id%type;
begin
 vn_did := round(dbms_random.value(10, 110), -1);
 select salary
 into vn_salary
 from employees
 where department_id = vn_did
 and rownum = 1;
 
-- case when ǥ����
 case 
 when vn_salary between 1 and 3000 then
       dbms_output.put_line(to_char(vn_salary) || ' = low');
 when vn_salary between 3001 and 6000 then   
        dbms_output.put_line(to_char(vn_salary) || ' = middle');
 when vn_salary between 6001 and 10000 then   
        dbms_output.put_line(to_char(vn_salary) || ' = high');     
 else      
    dbms_output.put_line(to_char(vn_salary) || ' = super');
 end case;

-- case ǥ���� when
-- case vn_salary between 1 and 10000
-- when vn_salary between 1 and 3000 then
--       dbms_output.put_line(to_char(vn_salary) || ' = low');
-- when vn_salary between 3001 and 6000 then   
--        dbms_output.put_line(to_char(vn_salary) || ' = middle');
-- when vn_salary between 6001 and 10000 then   
--        dbms_output.put_line(to_char(vn_salary) || ' = high');     
-- else      
--    dbms_output.put_line(to_char(vn_salary) || ' = super');
-- end case;
end;
/

-- while��
declare
    vn number:= 0;
begin
    while vn < 10
    loop
    dbms_output.put_line(vn);
    vn := vn+1;
    end loop;
end;
/

-- for��
declare
    vn number := 0;
begin
    for vn in 0..9
    loop
        dbms_output.put_line(vn);
    end loop;    
end;
/

-- for (reverse) 9����0����..
declare
    vn number := 0;
begin
    for vn in reverse 0..9
    loop
        dbms_output.put_line(vn);
     end loop;   
end;
/

-- loop��

-- ������ ���. for��.
declare
    i number:= 0;
    j number := 0;
begin
    for i in 2..9
    loop
        for j in 1..9
        loop
        dbms_output.put_line(to_char(i) || 'x' || to_char(j) || '=' ||to_char(i*j));
        end loop;
    end loop;
end;
/

-- ������ ���. loop��.
declare
    i number := 0;
    j number := 0;
begin
    loop 
        i := i + 1;
        j := j + 1;
        exit when j>9;
        loop
            j := j + 1;
            exit when j>9;
            dbms_output.put_line(i || 'x' || j || '=' ||i*j);
        end loop;
    end loop;
end;
/



-- ���ν���. (Procedure)

create or replace procedure department_info
is
 v_department_name departments.department_name%type;
 v_manager_id departments.manager_id%type;
 m_name employees.emp_name%type;
begin
 select department_name, manager_id
 into v_department_name, v_manager_id
 from departments 
 where department_id = 80;
 
 select emp_name 
 into m_name
 from employees
 where employee_id = v_manager_id;
 dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ��� �̸� = ' || m_name);
end;
/
exec department_info();
--
--create or replace procedure department_info
--is
-- v_department_name departments.department_name%type;
-- v_manager_id departments.manager_id%type;
-- m_name employees.emp_name%type;
--begin
-- select department_name, manager_id
-- into v_department_name, v_manager_id
-- from departments 
-- where department_id = 80;
-- 
-- select emp_name 
-- into m_name
-- from employees
-- where employee_id = v_manager_id;
-- dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ��� �̸� = ' || m_name);
--end;
--/
--exec department_info();

-- �Ű�����.
create or replace procedure department_info(d_id departments.department_id%type)
is
 v_department_name departments.department_name%type;
 v_manager_id departments.manager_id%type;
 m_name employees.emp_name%type;
begin
 select department_name, manager_id
 into v_department_name, v_manager_id
 from departments 
 where department_id = d_id;
 
 select emp_name 
 into m_name
 from employees
 where employee_id = v_manager_id;
 dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ��� �̸� = ' || m_name);
end;
/
exec department_info(80);
--
--create or replace procedure department_info(d_id departments.department_id%type)
--is
-- v_department_name departments.department_name%type;
-- v_manager_id departments.manager_id%type;
-- m_name employees.emp_name%type;
--begin
-- select department_name, manager_id
-- into v_department_name, v_manager_id
-- from departments 
-- where department_id = d_id;
-- 
-- select emp_name 
-- into m_name
-- from employees
-- where employee_id = v_manager_id;
-- dbms_output.put_line('�μ��� = ' || v_department_name || ', �μ��� �̸� = ' || m_name);
--end;
--/
--exec department_info(80);


--
-- PL / SQL ���ν���.. 

create or replace procedure gugu(dan number)
is
begin
    for i in 1..9
    loop
        dbms_output.put_line(to_char(dan) || 'x' || to_char(i) || '=' || to_char(dan*i));
    end loop;
end;
/
exec gugu(7);


-- �μ��ڵ� ==> �μ��ο��� procedure.
-- departmenet_id, 

select * from employees;
select * from departments;

create or replace procedure howmany(d_id employees.department_id%type)
is
    cnt number;
    
begin
    select count(*)
    into cnt
    from employees
    where department_id = d_id;
    dbms_output.put_line(cnt);
end;
/
exec howmany(50);


-- �μ��ڵ带 �ָ� �� �μ��� �����μ��� �� �ο���.
select * from employees;
select * from departments;

create or replace procedure howmany(d_id employees.department_id%type)
is
    e_cnt number;
begin
    select count(*)
    into e_cnt
    from employees
    where department_id in (select department_id from departments where parent_id = d_id)
    or department_id = d_id;

    dbms_output.put_line(e_cnt);
end;
/
exec howmany(10);



-- PL / SQL �Լ�..

create or replace function plus(a number, b number)
return number
is
    c number;
begin
    c := a + b;
    return c;
end;
/
select plus(12,13) from dual;

-- 
--
select b.department_name, sum(a.salary)
from employees a, departments b
where a.department_id = b.department_id
group by b.department_name
order by b.department_name;

create or replace function tot_sal(did departments.department_id%type)
return employees.salary%type
is
    total employees.salary%type;
begin
    select sum(salary)
    into total
    from employees 
    where department_id = did;
    return total;
end;
/
select department_name, tot_sal(department_id)
from departments 
order by department_name;


-- �μ��ڵ� => �μ���. getDname(�μ��ڵ�)
-- �μ��ڵ� => �μ����̸�. getMname(�μ��ڵ�)
-- �μ��ڵ� => �μ��ο���. getCount(�μ��ڵ�)

-- �μ��ڵ� => �μ���. getDname(�μ��ڵ�)
select * from departments;

create or replace function getDname(d_id departments.department_id%type)
return departments.department_name%type
is
    d_name departments.department_name%type;
begin   
    select department_name
    into d_name
    from departments
    where department_id = d_id;
    return d_name;
end;
/
select getDname(50)
from dual;

select department_name from departments where department_id = 50;

--select getDname(department_id)
--from departments;


-- �μ��ڵ� => �μ����̸�. getMname(�μ��ڵ�)
select * from departments;
select * from employees;

-- departments.manager_id = employees.employee_id;
create or replace function getMname(d_id departments.department_id%type)
return employees.emp_name%type
is
    captain_name employees.emp_name%type;
begin
    select b.emp_name
    into captain_name
    from departments a, employees b
    where a.department_id = d_id
    and a.manager_id = b.employee_id;
    return captain_name;
end;
/
select getMname(10)
from dual;

select department_name, getMname(department_id)
from departments;

select a.department_id, b.emp_name
from departments a, employees b
where a.manager_id = b.employee_id;


-- �μ��ڵ� => �μ��ο���. getCount(�μ��ڵ�)
select * from departments;
select * from employees;

select count(*)
from employees 
where department_id = d_id;

create or replace function getCnt(d_id departments.department_id%type)
return employees.emp_name%type
is
    captain_name employees.emp_name%type;
    m_id departments.manager_id%type;
begin
    select manager_id 
    into m_id
    from departments
    where department
end;
/
select getMemberCount(50)
from dual;

select department_name, getMemberCount(department_id)
from departments;
