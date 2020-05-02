INSERT INTO dimension_customer(customerName, vipLevel) 
SELECT customerName, '1'
FROM customers
LIMIT 3;

INSERT INTO fact_order(customerNumber, orderDate) 
SELECT customerNumber, CURDATE()
FROM dimension_customer
LIMIT 3;