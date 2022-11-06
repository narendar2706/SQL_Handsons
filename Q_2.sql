use hdns;

create table Supplier(
Supplier_id numeric(5),
Supplier_name varchar(150),
Address varchar(150),
City varchar(50),
State varchar(15),
country varchar(15),
contact varchar(10));

ALTER TABLE Supplier ADD CONSTRAINT valid_no CHECK (length(contact)=10);
select * from Supplier;
insert into Supplier values(01,'nare','hyd','nal','tg','indi',1234567891);
