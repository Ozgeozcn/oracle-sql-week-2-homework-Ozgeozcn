CREATE TABLE odev.products 
(
    product_id NUMBER(8) NOT NULL,
    product_name VARCHAR(250) NOT NULL,
    description VARCHAR2(2000),
    cost_price NUMBER(15,2),
    list_price NUMBER(15,2)
);

INSERT INTO odev.products (product_id, product_name, description, cost_price, list_price) VALUES (25584656, 'NPU 160', 'HOT ROLLED STEEL GROUP', 500.00, 585.00);
INSERT INTO odev.products (product_id, product_name, description, cost_price, list_price) VALUES (25589156, 'IPE 180', 'HOT ROLLED STEEL GROUP', 530.00, 615.00);
INSERT INTO odev.products (product_id, product_name, description, cost_price, list_price) VALUES (25564785, 'PFC 150 MM', 'HOT ROLLED STEEL GROUP', 530.00, 615.00);
INSERT INTO odev.products (product_id, product_name, description, cost_price, list_price) VALUES (25596325, 'HRS 10 MM 1,5X6 M', 'HOT ROLLED STEEL GROUP', 475.00, 560.00);
INSERT INTO odev.products (product_id, product_name, description, cost_price, list_price) VALUES (25524569, 'HRP 40 MM 1,5x12 M', 'HOT ROLLED STEEL GROUP', 505.00, 590.00);

CREATE TABLE odev.employees(
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    email VARCHAR2(150) NOT NULL,
    manager_id NUMBER(5,0),
    job_title VARCHAR(30) NOT NULL,
    employee_id NUMBER(5) PRIMARY KEY,
);

INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Dan', 'Crawford', 'dan.crawford@live.com', 15632, 'Sales Support Specialist', 54896)
INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Ajwa', 'Peck', 'ajwa.peck@live.com', 15632, 'Export Sales Specialist', 25694)
INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Roosevelt', 'Kaiser', 'roosevelt.kaiser@live.com', 15632, 'Sales Support Specialist', 48526)
INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Jaya', 'Jordan', 'jaya.jordan@live.com', 15632, 'Export Sales Specialist', 25483)
INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Emmett', 'Britt', 'emmitt.britt@live.com', 15632, 'Export Sales Specialist', 25489)
INSERT INTO odev.employees(first_name,last_name, email, manager_id, job_title, employee_id) VALUES ('Tyreese', 'Mcmahon', 'tyreese.mcmahon@live.com', null, 'Sales Manager', 15632)

create table odev.invoice
(
employee_id number(5) primary key,
invoice_date date,
invoice_no number(10) not null,
constraint fk_employee_id
    foreign key(employee_id)
    references odev.employees(employee_id)
    on delete cascade
)

create table odev.totalinvoice
(
invoice_no number(10) PRIMARY KEY,
total_invoice_amount number(15,2) not null,
total_invoice_kg number(15,2) not null
constraint fk_invoiceno
foreign key(invoice_no)
references odev.invoicedetail(invoice_no)
on update cascade
)

create table odev.premium
(
employee_id number(5) PRIMARY KEY,
invoice_no number(10) NOT NULL,
invoice_amount number(15,2) not null,
employee_premium number(10,2) not null
constraint fk_employee_id
foreign key(employee_id)
references odev.invoice(employee_id)
on update cascade
)


INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(54896, '01/02/2018', 8000012345);
INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(25694, '02/02/2018', 8000012346);
INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(48526, '03/02/2018', 8000012347);
INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(25483, '04/02/2018', 8000012348);
INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(25489, '05/02/2018', 8000012349);
INSERT INTO odev.invoice(employee_id,invoice_date,invoice_no) values(15632, '06/02/2018', 8000012350);

INSERT INTO odev.invoicedetail (invoice_no, product_id, list_price) VALUES (8000012345, 25589156 , 615);
INSERT INTO odev.invoicedetail (invoice_no, product_id, list_price) VALUES (8000012345, 25584656 , 585);
INSERT INTO odev.invoicedetail (invoice_no, product_id, list_price) VALUES (8000012345, 25524569 , 590);


create public synonym odev for odev.invoicedetail
create view ornek as
select invoice_no, total_invoice_amount
from total_invoice

