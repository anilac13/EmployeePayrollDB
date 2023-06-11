create database EmployeeDB;
use EmployeeDB;

create table Employees
(
	EmployeeId int primary key identity(1,1),
	EmployeeName varchar(100) not null,
	EmailId varchar(100),
	Salary decimal(10,2)
)