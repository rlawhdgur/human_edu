declare
    vs_emp_name employees.emp_name%type;
begin
    select emp_name
    into vs_emp_name    -- ���� �ϳ��� ���ڵ尡 ã������ ���� ���.
    from employees
    where employee_id = 124;
    
    dbms_output.put_line(vs_emp_name);
end;
/

--
--
-- Ŀ�� 

-- ver.1 (����� 200���� ū ����̸��� ���)
declare
    vs_emp_name employees.emp_name%type;
    cursor c1 (vn number)
    is
        select emp_name 
        from employees
        where employee_id > vn; -- ����
begin
    open c1(200); -- ����(����)
    loop
        fetch c1 
        into vs_emp_name; -- ���
        exit when c1%notfound;
        
        dbms_output.put_line(vs_emp_name);
        end loop;
        close c1; -- �ݱ�
end;
/

-- ver.1 (����� 200���� ū ���, �̸� ���)
declare
    vs_emp_name employees.emp_name%type;
    vn_emp_id employees.employee_id%type;
    cursor c1 (vn number)
    is
        select employee_id, emp_name 
        from employees
        where employee_id > vn; -- ����
begin
    open c1(200); -- ����(����)
    loop
        fetch c1 
        into vn_emp_id, vs_emp_name; -- ���
        exit when c1%notfound;
        
        dbms_output.put_line(to_char(vn_emp_id) || ', ' || vs_emp_name);
        end loop;
        close c1; -- �ݱ�
end;
/


-- Ŀ���� for��. ver.2 (����� 200���� ū ���, �̸� ���)

declare
    cursor c1 (vn number)
    is 
        select employee_id, emp_name 
        from employees
        where employee_id > vn;
begin
    for rec in c1(200)
    loop
        dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name);
    end loop;
end;
/

-- Ŀ�� ver.3 (����� 200���� ū ���, �̸� ���)
 
declare
begin
    for rec in (select employee_id, emp_name from employees where employee_id > 200)
    loop
        dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name);
    end loop;
end;
/

-- ����� 200���� ū ���, �̸�, �Ŵ����̸� ���.
declare
    m_name employees.emp_name%type;
begin
    for rec in (select employee_id, emp_name, manager_id from employees where employee_id > 200)
    loop
        select emp_name
        into m_name
        from employees
        where employee_id = rec.manager_id;
        
        dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name || ', ' || m_name);
    end loop;
end;
/


-- ��� ���� ������ ���, �̸�, �Ŵ����̸�, �Ҽ� �μ��� ���. Ŀ��..
select * from employees;
select * from departments;

declare
    m_name employees.emp_name%type;
    d_name departments.department_id%type;
begin
    for rec in ( 
    select a.employee_id, a.emp_name, b.manager_id, b.department_id 
    from employees a, employees b
    where a.manager_id = b.employee_id
    )
    loop
        select department_name
        into d_name
        from departments
        where department_id = rec.department_id;
        
        dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name || ', ' || m_name || d_name);
    end loop;
end;
/
select employee_id, emp_name from employees;

declare
    m_name employees.emp_name%type;
    d_name departments.department_name%type;
begin
    for rec in (select employee_id, emp_name, manager_id, department_id from employees )
    loop
        if rec.manager_id is null then
            m_name := '����';
        else    
        select emp_name
        into m_name
        from employees 
        where employee_id = rec.manager_id;
--        and  b.department_id = rec.department_id; 
        end if;
        select department_name
        into d_name
        from departments
        where department_id = rec.department_id;
--        select department_name 
--        into d_name
--        from departments
--        where department_id = rec.department_id; 
        
--        dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name || ', ' || m_name || ', ' 
--        || to_char(rec.department_id));
dbms_output.put_line(to_char(rec.employee_id) || ', ' || rec.emp_name || ', ' || m_name || ', ' 
        || d_name);
    end loop;
end;
/




