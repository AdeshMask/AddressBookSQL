create database Employee_Payroll;
show databases;
use Employee_Payroll;
show tables;
create table employee_payroll 
(
EmployeeID int NOT NULL AUTO_INCREMENT,
Employee_Name varchar(255),
Phone_number varchar(255),
Address varchar(255),
Department varchar(255),
Gender char(1),
Basic_Pay float,
Deduction float,
Taxable_Pay float,
Tax float,
NetPay float,
Start_Date Date,
city varchar(255),
country varchar(255),
PRIMARY KEY (EmployeeID)
);
 desc employee_payroll;
 
insert into employee_payroll (Employee_Name, Phone_number,Address, Department, Gender, Basic_Pay, Deduction, Taxable_Pay, Tax, NetPay, Start_Date, city, country) values ('Adesh', '1234567890','Solapur','Engg', 'M', '30000.0', '2000.0', '1000.0', '200.0', '1800.0', '2022-03-02', 'Pune', 'India');
insert into employee_payroll (Employee_Name, Phone_number,Address, Department, Gender, Basic_Pay, Deduction, Taxable_Pay, Tax, NetPay, Start_Date, city, country) values ("Gunjan", "1234567890", "Mumbai", "Engg", "M", '30000.0', '2000.0', '1000.0', '200.0', '1800.0', '2022-04-05', "pune", "India");
select * from employee_payroll;
delete from employee_payroll where EmployeeID = '3';
insert into employee_payroll (Employee_Name, Phone_number,Address, Department, Gender, Basic_Pay, Deduction, Taxable_Pay, Tax, NetPay, Start_Date, city, country) values ('Krunali', '9165389801','Nagpur','Sales', 'F', '40000.0', '2500.0', '1500.0', '220.0', '2000.0', '2021-09-015', 'Nagpur', 'India');
insert into employee_payroll (Employee_Name, Phone_number,Address, Department, Gender, Basic_Pay, Deduction, Taxable_Pay, Tax, NetPay, Start_Date, city, country) values ("Dhanshri", "7890123456", "Mumbai", "Marketing", "F", '35000.0', '2200.0', '1400.0', '250.0', '1900.0', '2022-03-025', "Mumbai", "India");
insert into employee_payroll (Employee_Name, Phone_number,Address, Department, Gender, Basic_Pay, Deduction, Taxable_Pay, Tax, NetPay, Start_Date, city, country) values ('Krunali', '9165389801','Nagpur','Marketing', 'F', '40000.0', '2500.0', '1500.0', '220.0', '2000.0', '2021-09-015', 'Nagpur', 'India');
select * from employee_payroll where Employee_Name = 'Krunali';
alter table employee_payroll add column Salary float after NetPay;
///////////////////////////////////////////////////////////////////////////////////////////////////////
select sum(Basic_pay + Deduction + Taxable_Pay + Tax + NetPay) as 'Adesh' from employee_payroll;
select sum(Basic_pay + Deduction + Taxable_Pay + Tax + NetPay) as salary from employee_payroll;
update employee_payroll set salary = 'sum(Basic_pay + Deduction + Taxable_Pay + Tax + NetPay)' where Employee_Name = 'Adesh';
select Employee_Name,Phone_number,(Basic_pay + Deduction + Taxable_Pay + Tax + NetPay) as salary from employee_payroll;
create table salary as select EmployeeID,Employee_Name,salary(Basic_pay + Deduction + Taxable_Pay + Tax + NetPay) from employee_payroll;
update employee_payroll set salary = '35000' where Employee_Name = 'Adesh';
update employee_payroll set salary = '35000' where Employee_Name = 'Gunjan';
update employee_payroll set salary = '46220' where Employee_Name = 'Krunali';
update employee_payroll set salary = '40750' where Employee_Name = 'Dhanshri';
update employee_payroll set salary = '46220' where Employee_Name = 'Krunali';
select sum(salary) from employee_payroll where Gender = 'F' group by Gender;
select sum(salary) from employee_payroll where Gender = 'M' group by Gender;
select count(*) from employee_payroll where Gender = 'F';
select count(*) from employee_payroll where Gender = 'M';
select avg(salary) from employee_payroll where Gender = 'M' group by Gender;
select avg(salary) from employee_payroll where Gender = 'F' group by Gender;
select min(salary) from employee_payroll where Gender = 'M' group by Gender;
select max(salary) from employee_payroll where Gender = 'M' group by Gender;
select min(salary) from employee_payroll where Gender = 'F' group by Gender;
select max(salary) from employee_payroll where Gender = 'F' group by Gender;
/////////////////////////////////////////////////////////////////////////////////////////////
select * from employee_payroll;
SELECT * FROM employee_payroll WHERE Start_Date > '2021-12-28';