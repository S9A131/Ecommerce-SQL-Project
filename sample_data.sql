INSERT INTO customers VALUES
(1,'Amit','amit@gmail.com','900000001','Hyderabad','TS','2024-01-10'),
(2,'Neha','neha@gmail.com','900000002','Bangalore','KA','2024-02-15'),
(3,'Rahul','rahul@gmail.com','900000003','Chennai','TN','2024-03-05');

INSERT INTO products VALUES
(101,'Laptop','Electronics',60000,50),
(102,'Headphones','Electronics',2000,200),
(103,'Shoes','Fashion',3000,150);

INSERT INTO orders VALUES
(1001,1,'2024-05-01','Delivered','UPI'),
(1002,2,'2024-05-02','Delivered','Card'),
(1003,3,'2024-05-03','Cancelled','COD');

INSERT INTO order_items VALUES
(1,1001,101,1,60000),
(2,1002,102,2,4000),
(3,1003,103,1,3000);

INSERT INTO payments VALUES
(501,1001,'2024-05-01',60000,'Success'),
(502,1002,'2024-05-02',4000,'Success'),
(503,1003,'2024-05-03',3000,'Failed');