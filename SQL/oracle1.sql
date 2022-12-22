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

-- C (데이터 생성/추가) insert
-- R (데이터 조회) select
-- U (데이터 수정) update    
-- D (데이터 삭제) delete

-- 데이터 추가
insert into student values ('John', 'Male', null, null, null, null, 'WsetLake', '6');
select *from student;
insert into student values ('Jane', 'Female', null, null, null, null, 'RiverWest', '5');
insert into student values ('Jane', 'Female', '01023403649', null, null, null, 'RiverWest', '5');
--insert into student(name, gender, school_name, grade_num) values ('Jacob', 'Male', 'RiverEast', '4');
--insert into student(name, gender, school_name, grade_num) values ('Jacob', 'Male', 'RiverEast', '4');
delete from student where name = 'Jane';
insert into student values ('김종혁', 'Male', '01023403649', 100, 90, 80, '휴먼', '5');
insert into student(name, gender, mobile, school_name, grade_num) values ('김태희', 'Female', '01022223333', '영등포', '1'); 
insert into student values ('장영민', '남성', '01044445555', 10, 20, 30, '교육', '5');
insert into student values ('박주형', '남성', '01011112222', 20, 40, 70, '명지', '6');
insert into student values ('백재하', '여성', '01031311111', 50, 70, 65, '숭실', '4');
insert into student values ('신승호', '남성', '01012123131', 75, 50, 50, '숭실', '1');
insert into student values ('김근호', '여성', '01088885555', 30, 80, 20, '충암', '2');
-- '' == null

commit;     -- 저장
rollback;   -- 불러오기

-- 데이터 삭제
delete from student where gender = 'Female';
delete from student where korean_score is null;
delete from student where math_score<30;
delete from student;

-- 데이터 수정
--update student set gender='남자' where name='김근호';


-- 샘플
--select count(*) from sales;
--select count(*) from employees;
--select * from employees;

create table worker as select * from employees;
select * from worker;

-- worker테이블에서 manager_id가 null인 사람의 월급(salary)을 30000으로 변경(update).
update worker set salary=30000 where manager_id is null;

-- manager_id가 124인 사람의 커미션퍼센티지를 0.25로 변경.
update worker set commission_pct=0.25 where manager_id=124;




