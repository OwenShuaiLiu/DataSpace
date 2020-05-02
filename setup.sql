use classicmodels;

CREATE TABLE dimension_customer(
	customerNumber INT AUTO_INCREMENT,
    customerName CHAR(50),
    vipLevel INT,
    PRIMARY KEY (customerNumber)
);

CREATE TABLE fact_order(
   orderNumber INT AUTO_INCREMENT,
   customerNumber INT REFERENCES dimension_customer(customerNumber),
   orderDate DATE,
   deliveryDate DATE,
   PRIMARY KEY (orderNumber)
   );
   
-- drop table dimension_customer;
-- drop table fact_order;
   
   