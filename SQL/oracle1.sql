create table person(
name varchar2(20),
mobile varchar2(8),
gender varchar2(6),
salary number(5)
);
desc person;

create table student(
name varchar2(20),
gender varchar2(6),
mobile varchar2(11),
math_score number(3),
english_score number(3),
korean_score number(3),
school_name varchar2(20),
grade_num varchar2(2)
);

desc student;

drop table person;
desc person;

-- C (������ ����/�߰�) insert
-- R (������ ��ȸ) select
-- U (������ ����) update    
-- D (������ ����) delete

-- ������ �߰�
insert into student values ('John', 'Male', null, null, null, null, 'WsetLake', '6');
select *from student;
insert into student values ('Jane', 'Female', null, null, null, null, 'RiverWest', '5');
insert into student values ('Jane', 'Female', '01023403649', null, null, null, 'RiverWest', '5');
--insert into student(name, gender, school_name, grade_num) values ('Jacob', 'Male', 'RiverEast', '4');
--insert into student(name, gender, school_name, grade_num) values ('Jacob', 'Male', 'RiverEast', '4');
delete from student where name = 'Jane';
insert into student values ('������', 'Male', '01023403649', 100, 90, 80, '�޸�', '5');
insert into student(name, gender, mobile, school_name, grade_num) values ('������', 'Female', '01022223333', '������', '1'); 
insert into student values ('�念��', '����', '01044445555', 10, 20, 30, '����', '5');
insert into student values ('������', '����', '01011112222', 20, 40, 70, '����', '6');
insert into student values ('������', '����', '01031311111', 50, 70, 65, '����', '4');
insert into student values ('�Ž�ȣ', '����', '01012123131', 75, 50, 50, '����', '1');
insert into student values ('���ȣ', '����', '01088885555', 30, 80, 20, '���', '2');
-- '' == null

commit;     -- ����
rollback;   -- �ҷ�����

-- ������ ����
delete from student where gender = 'Female';
delete from student where korean_score is null;
delete from student where math_score<30;
delete from student;

-- ������ ����
--update student set gender='����' where name='���ȣ';


-- ����
--select count(*) from sales;
--select count(*) from employees;
--select * from employees;

create table worker as select * from employees;
select * from worker;

-- worker���̺��� manager_id�� null�� ����� ����(salary)�� 30000���� ����(update).
update worker set salary=30000 where manager_id is null;

-- manager_id�� 124�� ����� Ŀ�̼��ۼ�Ƽ���� 0.25�� ����.
update worker set commission_pct=0.25 where manager_id=124;




