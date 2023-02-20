create table bank
(
name varchar(30) not null,
address varchar(50) not null,
bank_number number not null,
constraint bank_pm primary key(bank_number)
)

insert all
into bank values('Aziz Bank','Kandahar',120)
into bank values('Islamic BAnk','Kabul',121)
into bank values('United Bank','Herat',122)
select 1 from dual;

select * 
from bank; 
 
create table employe
(
first_name varchar(30) not null,
mid_name varchar(30)not null,
last_name varchar(20),
birth_date date default sysdate,
bank_id number primary key,
salary number not null,
SSN number not null,
bank_number number not null,
constraint fk_employeer foreign key(bank_number)REFERENCES bank(bank_number)
);

insert all
into employe(first_name,mid_name,last_name,bank_id,salary,ssn,bank_number) values('Ahmad','Zubair','Afghanmal',10,12000,12091,120)
into employe(first_name,mid_name,last_name,bank_id,salary,ssn,bank_number) values('Abdul','Jalil','Faroq',11,13000,12092,121)
into employe(first_name,mid_name,last_name,bank_id,salary,ssn,bank_number) values('Khan','Mohammad','Nazari',12,14000,12093,122)
select 1 from dual;

select *
from employe;

create table branch
(
name varchar(30) not null,
branch_number number not null,
constraint branch_pm primary key(branch_number),
bank_id number not null,
constraint branch_fk foreign key(bank_id) references employe(bank_id),
bank_number number not null,
constraint branch_fk1 foreign key(bank_number) references bank(bank_number)
);

insert all
into branch values('Azizi bran 1',20,10,120)
into branch values('Islamic bran 1',21,11,121)
into branch values('United bran 1',22,12,122)
select 1 from dual;

select *
from branch;

create table loan
(
loan_id number not null,
type varchar(30) not null,
amount number not null,
branch_number number not null,
ssn number(30) not null,
constraint loan_pm primary key(loan_id),
constraint loan_fk foreign key (branch_number) references branch(branch_number),
constraint loan_fk1 foreign key (ssn) references customer(ssn)
);

insert all
into loan values(20,'long',3000,20,12123)
into loan values(21,'short',4000,21,12124)
into loan values(22,'short',2500,22,12125)
select 1 from dual;

select *
from loan;

create table account
(
account_number number not null,
account_type varchar(40) not null,
balance number not null,
branch_number number not null,
constraint account_pm primary key(account_number),
constraint account_fk foreign key(branch_number) references branch(branch_number)
);

insert all
into account values(001,'salary',12000,20)
into account values(002,'keeping',13000,21)
into account values(003,'resvere',12500,22)
select 1 from dual;
select 4*2 from dual;

select *
from account;
create table customer
(
first_name varchar(30) not null,
mid_name varchar(30) not null,
last_name varchar(30) not null,
ssn number not null,
father_name varchar(40) not null,
gender varchar(20) not null,
account_number number not null,
constraint customer_pm primary key(ssn),
constraint customer_fk foreign key (account_number) references account(account_number)
);

insert all
into customer values('Ali','Ahmad','Qadari',12123,'AhmadUllah','Male',001)
into customer values('Jalil','Ahmad','Mohammadi',12124,'Abdul Ghani','Male',002)
into customer values('Ahmad','Ali','Gulab',12125,'Haji Bazar Gul','Male',003)
select 1 from dual;

select *
from customer;

create table customer_account
(
account_number number not null,
ssn number not null,
constraint customer_account_pm primary key(account_number),
constraint customer_account_fk foreign key(account_number) references account(account_number),
constraint customer_account_fk1 foreign key(ssn) references customer(ssn)
);

insert all
into customer_account values(001,12123)
into customer_account values(002,12124)
into customer_account values(003,12125)
select 1 from dual;

select *
from customer_account;

create table branch1
(
location_branch varchar(50) not null,
branch_number number not null,
constraint branch1_pm primary key(branch_number),
constraint branch1_fk foreign key(branch_number) references branch(branch_number)
);

insert all
into branch1 values('Azizi bran1',20)
into branch1 values('Islamic bran2',21)
into branch1 values('United bran1',22)
select 1 from dual;

select *
from branch1;

create table employe1 
(
phone_number number not null,
bank_id number not null,
constraint employee1_pm primary key(phone_number),
constraint employee1_fk foreign key(bank_id) references employe(bank_id)
);

insert all
into employe1 values(+93708806281,10)
into employe1 values(+93744580628,11)
into employe1 values(+93704707160,12)
select 1 from dual;

select *
from employe1;

create table customer1
(
phone_number number not null,
ssn number not null,
constraint customer1_pm primary key(phone_number),
constraint customer1_fk foreign key(ssn) references customer(ssn)
);

insert all
into customer1 values(+93789012455,12123)
into customer1 values(+93749080628,12124)
into customer1 values(+93706789789,12125)
select 1 from dual;

select *
from customer1;





