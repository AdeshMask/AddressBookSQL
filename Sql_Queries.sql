create database AddressBookDB;

show databases;

use AddressBookDB;

create table AddressBook(first_name varchar(25),last_name varchar(25),address varchar(100),city varchar(25),state varchar(25),zip int,phone_no long,email varchar(30));

desc AddressBook;

insert into AddressBook (first_name,last_name,address,city,state,zip,phone_no,email) values ('Adesh','Maske','Jotibawadi','Solapur','MH','413406','1231212333','adesh@gmail.com' ),('Abc','pqr','pqrs','pqrst','Mh','321123','8979878979','abc@gmail.com')
,('Xyz','Xyz123','xyz12','xyz21','MH','312332','9876543209','xyz@gmail.com');

select * from AddressBook;

UPDATE AddressBook SET phone_no = '9876543256' WHERE first_name = 'Adesh';

DELETE FROM AddressBook WHERE first_name= 'Abc';

insert into AddressBook (first_name,last_name,address,city,state,zip,phone_no,email) 

values('Aman','Gupta','Mumbai','Mombai','MH','412001','9098908765','amangupta@gmail.com');

select * from AddressBook;

update AddressBook set phone_no = "9898879098" where first_name = "Abc";

select * from AddressBook where city = 'Solapur';

select count(*) from AddressBook where state = 'MH';

SELECT * from AddressBook WHERE state = 'MH' order by first_name;

alter table AddressBook add column bookname varchar(25), add column booktype varchar(25);

UPDATE AddressBook SET bookname='AddressBook1' WHERE firs_tname = 'Adesh';

update AddressBook set bookname='AddressBook2' where first_name = 'Abc';

update AddressBook set bookname='AddressBook3' where first_name = 'Aman';

update AddressBook set booktype='MySelf' where first_name = 'Adesh';

update AddressBook set booktype='Unknown' where first_name = 'Abc';

update AddressBook set booktype='Interprenaur' where first_name = 'Aman';

select booktype, count(*) from AddressBook group by booktype;
