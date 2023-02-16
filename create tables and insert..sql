create table Bank(
name varchar(50) not null,
address varchar(50) not null,
bank_number number not null,
constraint bank_pr primary key(bank_number) 
);

insert all 
into bank values('karim','kabul_bank',1)
into bank values('jan','azizi_bank',2)
into bank values('jalil','islamic_bank',4)
select 1 from dual;


create table employee(
first_name varchar(40) not null,
last_name varchar(40),
middle_name varchar(40),
bank_number number not null,
salary number not null,
ssn number not null,
bank_id number not null primary key,
birth_date date default sysdate,
constraint employee_fk foreign key(bank_number) references bank(bank_number)
);

insert into employee(first_name,last_name,middle_name,bank_number,salary,ssn,bank_id) 
     values('karim','jan','khan',1,2000,45673,1);
     
     insert into employee(first_name,last_name,middle_name,bank_number,salary,ssn,bank_id) 
     values('karim1','jan1','khan1',2,3000,65673,2);
    
    insert into employee(first_name,last_name,middle_name,bank_number,salary,ssn,bank_id) 
     values('karim2','jan2','khan2',4,9000,58673,3);
