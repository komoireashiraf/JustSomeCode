/* 2024-10-16 19:44:10 [194 ms] */ 
CREATE TABLE CustomerId(
    customer_ID int,
    first_name VARCHAR(45),
    contact_number int,
    email_address VARCHAR(45),
    Shipping_Address VARCHAR(45),
    billing_address VARCHAR(45),
    Customer_Type VARCHAR(45),
    PRIMARY KEY (customer_ID)
);
/* 2024-10-16 19:44:29 [31 ms] */ 
DESCRIBE customerid;
/* 2024-10-16 20:07:14 [119 ms] */ 
CREATE TABLE Orders(
    order_ID INT,
    customer_ID INT,
    order_date VARCHAR(45),
    total_amount INT,
    shipping_status VARCHAR(45),
    payment_Status VARCHAR(45),
    PRIMARY KEY (order_ID),
    FOREIGN KEY (customer_ID) REFERENCES CustomerId(customer_ID)
);
/* 2024-10-16 20:16:28 [6 ms] */ 
DESCRIBE orders;
/* 2024-10-16 20:59:46 [84 ms] */ 
CREATE TABLE Employee(
    Employee_ID INT,
    First_Name VARCHAR(45),
    Last_Name VARCHAR(45),
    Contact_Number INT,
    Email_Address VARCHAR(45),
    Job_Title VARCHAR(45),
    Salary VARCHAR(45),
    Hire_Date VARCHAR(45),
    PRIMARY KEY (Employee_ID)
);
/* 2024-10-16 21:00:17 [57 ms] */ 
CREATE TABLE Supplier(
    Supplier_ID INT,
    Supplier_Name VARCHAR(45),
    Contact_Number INT,
    Email_Address VARCHAR(45),
    Address_LOCATION VARCHAR(45),
    Products_Supplied VARCHAR(45),
    PRIMARY KEY (Supplier_ID)
);
/* 2024-10-16 21:00:27 [79 ms] */ 
CREATE TABLE Product(
    Product_ID INT,
    Product_Name VARCHAR(45),
    Product_Type VARCHAR(45),
    Brand VARCHAR(45),
    Model_Number INT,
    Price INT,
    Quantity_in_Stock VARCHAR(45),
    Supplier_ID INT,
    PRIMARY KEY (Product_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID)
);
/* 2024-10-16 21:00:33 [90 ms] */ 
CREATE TABLE Inventory(
    Inventory_ID INT,
    Product_ID INT,
    Stock_Level VARCHAR(45),
    Last_Updated VARCHAR(45),
    PRIMARY KEY (Inventory_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
/* 2024-10-16 21:01:55 [115 ms] */ 
CREATE TABLE OrderDetails(
    OrderDetail_ID INT,
    OrderID INT,
    Product_ID INT,
    Quantity INT,
    Price VARCHAR(45),
    PRIMARY KEY (OrderDetail_ID),
    FOREIGN KEY (OrderID) REFERENCES Orders(order_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
/* 2024-10-16 21:02:05 [93 ms] */ 
CREATE TABLE Payment(
    Payment_ID INT,
    Order_ID INT,
    Payment_Date VARCHAR(45),
    Payment_Method VARCHAR(45),
    Payment_Amount INT,
    PRIMARY KEY (Payment_ID),
    FOREIGN KEY (Order_ID) REFERENCES Orders(order_ID)
);
/* 2024-10-16 21:03:16 [9 ms] */ 
DESCRIBE inventory;
/* 2024-10-16 21:09:47 [5 ms] */ 
DESCRIBE supplier;
/* 2024-10-16 21:20:45 [920 ms] */ 
INSERT INTO Supplier VALUES 
(1, 'ABC Supplies', 0776543210, 'abc.supplies@email.com', '123 Main St', 'Electronics'),
(2, 'Global Tech', 0723456789, 'global.tech@email.com', '456 Market Rd', 'Appliances'),
(3, 'Prime Suppliers', 0712345678, 'prime.suppliers@email.com', '789 Industrial Ave', 'Furniture');
/* 2024-10-16 21:20:57 [10 ms] */ 
select*from supplier;
/* 2024-10-16 21:25:27 [4 ms] */ 
select*from orders;
/* 2024-10-16 21:32:57 [18 ms] */ 
INSERT INTO Employee (Employee_ID, First_Name, Last_Name, Contact_Number, Email_Address, Job_Title, Salary, Hire_Date)
VALUES 
(1, 'Michael', 'Brown', 0771234560, 'michael.brown@email.com', 'Manager', '5000', '2024-01-01'),
(2, 'Sara', 'Connor', 0723456789, 'sara.connor@email.com', 'Sales Associate', '3000', '2024-02-15'),
(3, 'David', 'Wilson', 0712345678, 'david.wilson@email.com', 'Technician', '4000', '2024-03-20');
/* 2024-10-16 21:37:10 [2 ms] */ 
select*from orders;
