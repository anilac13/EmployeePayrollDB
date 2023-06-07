--UC1 Create Payroll service database
Create Database Payroll_Service;
Use Payroll_Service;

--UC2 Create employee payroll table
create table Employee_Payroll
(
  EmployeeId int primary key identity(1,1),
  EmployeeName varchar(100) not null,
  Salary decimal(10,2),
  StartDate Date
)

--UC3 Create employee payroll data(Insert data)
insert into Employee_Payroll (EmployeeName,Salary,StartDate) values ('Virat',2000,'2022-06-05');
insert into Employee_Payroll (EmployeeName,Salary,StartDate) values ('John',1000,'2023-01-12');
insert into Employee_Payroll (EmployeeName,Salary,StartDate) values ('Agastya',3000,'2022-04-24');
insert into Employee_Payroll (EmployeeName,Salary,StartDate) values ('Rama',1500,'2023-09-15');
insert into Employee_Payroll (EmployeeName,Salary,StartDate) values ('Venky',2500,'2022-12-21');

--UC4 Retreive all the employee payroll data
select * from Employee_Payroll;

--UC5 Retreive salary data for particular employee and employee who have joined in particular data range
select salary from Employee_Payroll where EmployeeName = 'Agastya'; 
select EmployeeName,StartDate from Employee_Payroll where StartDate between cast('2022-04-01' as date) and CURRENT_TIMESTAMP;

--UC6 Add Gender to Employee payroll
alter table Employee_Payroll add Gender varchar(1)
update Employee_Payroll set Gender = 'M' where EmployeeName = 'Virat';
update Employee_Payroll set Gender = 'M' where EmployeeName = 'John';
update Employee_Payroll set Gender = 'M' where EmployeeName = 'Agastya';
update Employee_Payroll set Gender = 'M' where EmployeeName = 'Rama';
update Employee_Payroll set Gender = 'M' where EmployeeName = 'Venky';

--UC7 Find Sum, Average, Min, Max, Count and number of Male & female.
select Sum(salary) from Employee_Payroll where Gender = 'M' group by Gender;
select Avg(salary) from Employee_Payroll where Gender = 'M' group by Gender;
select Min(salary) from Employee_Payroll where Gender = 'M' group by Gender;
select Max(salary) from Employee_Payroll where Gender = 'M' group by Gender;
select Count(*) from Employee_Payroll group by Gender;

--UC8 Store employee information like Phone,Address,Department
Alter table employee_payroll Add Phone varchar(10), Address varchar(100), Department varchar(50);
