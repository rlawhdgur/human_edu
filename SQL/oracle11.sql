create table roomtype(
typenum number(3) primary key,
typename varchar2(20) not null,
comments varchar2(32)
);
desc roomtype;

insert into roomtype values(1, 'SuitRoom', null);
insert into roomtype values(2, 'DeluxeRoom', null);
insert into roomtype values(3, 'FamilyRoom', null);
insert into roomtype values(4, 'SingleRoom', null);
insert into roomtype values(5, 'DoubleRoom', null);
insert into roomtype(typenum, typename) values(6, 'PartyRoom');

select * from roomtype;

create table roominfo(
num varchar2(10) primary key,
name varchar2(20) not null,
type number(3),
howmany number(3) default 1,
howmuch number(6) default 0,
constraint fk_typenum foreign key(type) references roomtpe(typenum)
);
desc roominfo;

insert into roominfo values('A-100', '백두산', 1, 2, 120000);




-- 이름 : 매니저사번, 월급
select *from worker;

select emp_name || ' : ' || manager_id || ', ' || salary from worker;

--
select employee_id, salary, 
    case when salary <= 5000 then 'C'
         when salary > 5000 and salary <= 15000 then 'B'
         else 'A'
    end as salary_level from worker;

-- salary>=10000 : 본부장급, 6000<=salary<10000 : 팀장급, salary<6000 : 팀원급

select salary, 
case when salary >= 10000 then '본부장급'
when salary < 10000 and salary > 5000 then '팀장급'
when salary < 6000 then '팀원급'
end as level1 from worker;

--select salary from worker;

