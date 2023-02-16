create table branch4
(
name varchar(30) not null,
branch_number number not null,
constraint branch_pm primary key(branch_number),
bank_id number not null,
constraint branch_fk3 foreign key(bank_id) references employe2(bank_id),
bank_number number not null,
constraint   branch_fk22 foreign key(bank_number) references bank2(bank_number)
);

insert all
into branch4 values('Azizi_bran1',3,6,90)
into branch4 values('Islamic_bran1',12,15,80)
into branch4 values('United_bran1',18,21,40)
select 1 from dual;


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

































