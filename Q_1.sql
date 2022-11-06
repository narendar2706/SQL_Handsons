create database hdns;
use hdns;

create table salesman(
SALESMAN_ID numeric(5) primary key,
NAME varchar(30),
CITY varchar(15),
COMMISSION DECIMAL(5,2));

create table orders(
ORD_NO numeric(5) primary key,
PURCH_AMT decimal(8,2),
ORD_DATE date,
CUSTOMER_ID numeric(5),
SALESMAN_ID numeric(5),
foreign key (SALESMAN_ID) references salesman(SALESMAN_ID));
