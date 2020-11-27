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

CREATE TABLE odev.sales_quantities
(
    first_name VARCHAR2(250) NOT NULL,
    last_name VARCHAR2(250) NOT NULL,
    employee_id NUMBER (5) NOT NULL PRIMARY KEY,
    quarter_of_year NUMBER,
    product_id NUMBER(8),
    product_name VARCHAR2(250) NOT NULL,
    sales_quantity NUMBER (10),
    CONSTRAINT fk_salesquantities_productid
        FOREIGN KEY(product_id)
        REFERENCES odev.products(product_id) 
        ON DELETE CASCADE
);

INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Dan', 'Crawford', 54896, 2, 25584656, 'NPU 160', 500 )
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Ajwa', 'Peck', 25694, 2, 25589156, 'IPE 180', 850)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Roosevelt', 'Kaiser', 48526, 3, 25584656, 'NPU 160', 620)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Jaya', 'Jordan', 25483, 3, 25564785, 'PFC 150 MM', 800)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Emmett', 'Britt', 25489, 4, 25596325, 'HRS 10 MM 1,5X6 M', 900)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Dan', 'Crawford', 54896, 1, 25596325, 'HRS 10 MM 1,5X6 M', 400)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Dan', 'Crawford', 54896, 3, 25589156, 'IPE 180', 750)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Ajwa', 'Peck', 25694, 3, 25589156, 'IPE 180', 625)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Roosevelt', 'Kaiser', 48526, 4, 25596325, 'HRS 10 MM 1,5X6 M', 840)
INSERT INTO odev.sales_quantities(first_name, last_name, employee_id, quarter_of_year, product_id, product_name, sales_quantity, sales_price) VALUES ('Jaya', 'Jordan', 25483, 2, 25584656, 'NPU 160', 250)


create public synonym odev for odev.sales_quantities

create view ornek as
select first_name, last_name, sales_quantity
from sales_quantities
where quarter_of_year = 3 ;
