-	 select * from Telco.product
WHERE QUOTA ='LIMITLESS';
-	 select * from TELCO.customer
WHERE STATUS = 'INITIAL';
-	 select * from TELCO.address
WHERE CITY = 'ISTANBUL';
-	select * from Sales.order_items
WHERE unit_price > 150;
-	select * from SALES.employees
WHERE hire_date BETWEEN '01/05/2016' AND '31/05/2016';
-	select * from SALES.contacts
WHERE first_name='Charlie' or first_name='Charlsie';
-	select PURPOSE, COUNT(*) from loans
where month = '4'
GROUP BY PURPOSE
-	select * from SALES.inventories
WHERE QUANTITY>10 AND QUANTITY<50;
-	select * from TELCO.contact
WHERE is_primary = '0';
-	select o.order_�d, sum(�.quant�ty*�.un�t_pr�ce) from SALES.orders O
JOIN SALES.order_�tems I on O.order_id = I.order_id
GROUP BY o.order_�d
ORDER BY 2 DESC
FETCH FIRST 9 ROW ONLY;
-	select First, last, sex, age from clients
WHERE AGE=50 OR AGE=51 AND SEX='FEMALE';
-	select * from TELCO.account
WHERE PAYMENT_TYPE != 'CASH';
-	select Name, surname, disconnection_date from TELCO.customer
WHERE STATUS='DEACTIVE';
-	select * from SALES.employees
WHERE manager_id IS NULL;
-	select * from SALES.locat�ons
WHERE STATE IS NULL;
-	select * from TELCO.account
WHERE ACCOUNT_CLOSING_DATE IS NOT NULL;
-	select * from TELCO.account
WHERE E_BILL_EMAIL IS NOT NULL;
-	select * from SALES.orders
WHERE STATUS='CANCELED' AND SALESMAN_ID IS NULL;
-	select * from TELCO.agreement
WHERE comm�tment_end_date > '01/01/2000' AND comm�tment_end_date < '01/01/2005';
-	select * from SALES.orders
WHERE order_date BETWEEN '01/01/2016' AND '01/06/2016';
-	select * from TELCO.subscr�pt�on
WHERE act�vat�on_date < '01/01/2005' AND STATUS='ACTIVE';
-	select * from TELCO.subscr�pt�on
WHERE create_date > '01/01/2010';
-	select * from TELCO.customer 
WHERE name LIKE 'E%';
-	select * from TELCO.product
WHERE PRODUCT_TYPE LIKE '%DSL';
-	select * from SALES.employees
WHERE job_t�tle NOT LIKE 'S%';
-	select * from SALES.products
WHERE product_name LIKE 'INTEL XEON%';
-	select * from TELCO.customer
WHERE (NAME LIKE '%�%') OR SURNAME LIKE '%�%';
-	select first_name||' '||last_name from SALES.contacts
WHERE f�rst_name LIKE 'C%'
ORDER BY last_name ;
-	select * from SALES.products
WHERE product_name LIKE 'Asus%'  AND l�st_pr�ce < standard_cost;      
-	select * from TELCO.address
WHERE country_cd = 'UK' OR country_cd = 'AU';
-	select * from SALES.product_categor�es
WHERE CATEGORY_ID != '3';
-	select * from TELCO.agreement
WHERE comm�tment_durat�on = '240 MONTHS' OR comm�tment_durat�on = '120 MONTHS'
-	select * from SALES.orders
WHERE STATUS != 'Shipped'
-	select * from SALES.inventories I
JOIN SALES.products P on P.product_id = I.product_id
WHERE QUANTITY = '100';
-	select * from TELCO.agreement
WHERE SUBTYPE = 'MAIN';
-	select * from TELCO.customer
WHERE STATUS = 'DEACTIVE';
-	select * from SALES.warehouses W
JOIN SALES.INVENTORIES I ON W.WAREHOUSE_ID = �.warehouse_�d
WHERE I.WAREHOUSE_ID = '8';
-	select COUNT(*) from TELCO.contact
WHERE STATUS = 'USED';
-	select * from SALES.products
WHERE LIST_PRICE BETWEEN 1000 AND 3000;
-	select COUNT(*),year from accounts
GROUP BY YEAR
ORDER BY year;
-	select COUNT(*),TYPE from transactions
GROUP BY TYPE
ORDER BY 1;
-	select COUNT(AMOUNT),TYPE from transactions
GROUP BY TYPE
ORDER BY COUNT(AMOUNT);
