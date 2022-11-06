use hdns;

create table Department(
deptno char(3) primary key,
deptname varchar(36) not null,
mgrno char(6),
admrdept char(3) not null,
location char(16));
select * from Department;
insert into Department values(001,'delivery','2543','125','hyd');
insert into Department values(009,'marketing','2514','123','mumbai');

create table Employee(
Empno char(6) not null,
Firstname varchar(12) not null,
Midinit char(1) not null,
Lastname varchar(15) not null,
Workdept char(3),
Foreign key (Workdept) references Department(Deptno),
Phoneno char(10), check(Phoneno >= 0000000000 and Phoneno <= 9999999999),
Hiredate Date,
Job char(9),
Edlevel smallint,
sex char(1),
Birthdate date,
Salary decimal(9,2),
Bonus decimal(9,2),
Comm decimal(9,2)
);
insert into Employee values(892,'jhon','A','sparta',009,9638521478,'2021/02/11','ft',5,'m','1990/04/05',50000,2500,68.21);
insert into Employee values(129,'kiran','A','kumar',001,9638521342,'2021/07/11','ft',6,'m','1995/04/05',60000,3500,78.21);
select * from department;
select * from Employee;

select a.Mgrno,b.Deptname as 'Manager_Department' from Department a join Department b where a.Admrdept=b.Deptno;
select Employee.Empno,Department.Mgrno, Department.Deptname as 'Worker_Department', Department.Location
from Department join Employee on Employee.Workdept=Department.Deptno;

select q1.Worker_Department,q1.Location,q2.Manager_Department
from (select Employee.Empno,Department.Mgrno,Department.Deptname as 'Worker_Department',Department.Location
from Department join Employee on Employee.Workdept=Department.Deptno)q1
join (select a.Mgrno,b.Deptname as 'Manager_Department' from Department a join Department b where a.Admrdept=b.Deptno)q2
on q1.Mgrno=q2.Mgrno where q1.Worker_Department!=q2.Manager_Department order by q1.Worker_Department asc;
