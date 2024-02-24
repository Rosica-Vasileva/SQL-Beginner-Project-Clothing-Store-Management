
#Products
CREATE TABLE Products (
ProductID INT PRIMARY KEY,
Name  VARCHAR (255),
Price DECIMAL (10.2),
Stock INT,
CategoryID INT
);

INSERT INTO Products (ProductID, Name, Price, Stock, CategoryID) VALUES
    (1, 'T-Shirt', 15.99, 100, '01'),
    (2, 'Jeans', 29.99, 50, '02'),
    (3, 'Dress', 39.99, 30, '03'),
    (4, 'Sweater', 24.99, 80, '01'),
    (5, 'Skirt', 19.99, 40, '03'),
    (6, 'Shirt', 18.99, 60, '01'),
    (7, 'Jacket', 49.99, 20, '02'),
    (8, 'Pants', 34.99, 45, '02'),
    (9, 'Blouse', 22.99, 35, '03'),
    (10, 'Shorts', 14.99, 55, '01');



#Customers
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    ContactInfo VARCHAR(255) 
);


INSERT INTO Customers (CustomerID, Name, Address, ContactInfo)
VALUES 
    (1, 'John Smith', '123 Main Street', 'john@example.com'),
    (2, 'Alice Johnson', '456 Oak Avenue', 'alice@example.com'),
    (3, 'Michael Brown', '789 Elm Street', 'michael@example.com'),
    (4, 'Emily Davis', '101 Pine Street', 'emily@example.com'),
    (5, 'Daniel Wilson', '202 Maple Avenue', 'daniel@example.com'),
    (6, 'Sarah Taylor', '303 Cedar Street', 'sarah@example.com'),
    (7, 'James Martinez', '404 Walnut Avenue', 'james@example.com'),
    (8, 'Emma Anderson', '505 Birch Street', 'emma@example.com'),
    (9, 'David Thomas', '606 Spruce Avenue', 'david@example.com'),
    (10, 'Olivia Jackson', '707 Pine Street', 'olivia@example.com');



#Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    OrderDate DATE,
    CustomerID INT,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, OrderDate, CustomerID, TotalAmount)
VALUES 
    (1, '2024-02-24', 1, 50.97),
    (2, '2024-02-24', 3, 94.96),
    (3, '2024-02-24', 5, 79.95),
    (4, '2024-02-24', 7, 84.98),
    (5, '2024-02-24', 9, 64.97),
    (6, '2024-02-25', 2, 75.99),
    (7, '2024-02-25', 4, 60.50),
    (8, '2024-02-25', 6, 89.75),
    (9, '2024-02-25', 8, 120.00),
    (10, '2024-02-25', 10, 45.25);



#OrderDetails
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    PRIMARY KEY (OrderID, ProductID)
); 

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES 
    (1, 1, 2, 15.99),
    (1, 3, 1, 39.99),
    (2, 2, 1, 29.99),
    (2, 4, 2, 24.99),
    (3, 5, 3, 19.99),
    (3, 7, 1, 49.99),
    (4, 6, 2, 18.99),
    (4, 8, 1, 34.99),
    (5, 10, 2, 14.99),
    (5, 9, 1, 22.99);



