create database Address_Book_DB;

use Address_Book_DB;

create table Address_Book(Book_ID int primary key, book_name varchar (50));

desc Address_Book;

create table Book1(book_id int primary key,first_name varchar(25),last_name varchar(25),address varchar(100),city varchar(25),state varchar(25),
					zip int,phone_no long,email varchar(30),foreign key(book_id) references Address_Book(Book_ID));

create table Book2(book_id int primary key,first_name varchar(25),last_name varchar(25),address varchar(100),city varchar(25),state varchar(25),
					zip int,phone_no long,email varchar(30),foreign key(book_id) references Address_Book(Book_ID));

insert into Book1(book_id,first_name,last_name,address,city,state,zip,phone_no,email) values ('1','Adesh','Maske','Jotibawadi','Solapur','MH','413406','1231212333','adesh@gmail.com' );
insert into Book1(book_id,first_name,last_name,address,city,state,zip,phone_no,email) values ('2','Abc','pqr','pqrs','pqrst','Mh','321123','8979878979','abc@gmail.com');
insert into Book1(book_id,first_name,last_name,address,city,state,zip,phone_no,email) values ('3','Xyz','Xyz123','xyz12','xyz21','MH','312332','9876543209','xyz@gmail.com');

select * from Book1;

update Book1 set phone_no = "9898879098" where first_name = "Abc";

select city, count(city) from Book1 group by city;

select state, count(state) from Book1 group by state;

insert into Address_Book(Book_ID,book_name) values('1','Book1'),('2','Book2');
select * from Address_Book;   

create table contact_type(book_id int primary key,book_type varchar(20));

alter table Address_Book add type varchar(25);

select * from Address_Book;

update Address_Book set type = 'Family' where book_name = 'book2';

select * from Book1;
insert into Book2(book_id,first_name,last_name,address,city,state,zip,phone_no,email) values ('1','Amar','Maske','Pune','haveli','Mh','433123','9087687879','amarmaske@gmail.com');
insert into Book2(book_id,first_name,last_name,address,city,state,zip,phone_no,email) values ('2','Atul','Maske','solapur','Pune','Mh','433223','9798787879','atulmaske@gmail.com');
select * from Book2;

alter table contact_type add foreign key(book_id) references Book2(book_id);

