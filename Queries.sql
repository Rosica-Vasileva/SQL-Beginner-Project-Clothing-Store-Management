#Retrieve all products from a specific category.
SELECT * FROM Products 
WHERE CategoryID='01';

SELECT * FROM Products 
WHERE CategoryID='03';

#Retrieve all orders from a specific customer.
SELECT * FROM Orders 
WHERE CustomerID = '2';

SELECT * FROM Orders 
WHERE CustomerID = '10';

#Calculate the total amount of an order.
SELECT OrderID, SUM(Quantity * UnitPrice) AS TotalAmount
FROM OrderDetails
WHERE OrderID = 1; 

SELECT OrderID, SUM(Quantity * UnitPrice) AS TotalAmount
FROM OrderDetails
WHERE OrderID = 3; 


#Add a new product to the store.
INSERT INTO Products (ProductID,Name,Price,Stock,CategoryID)
VALUES 
(11,'jewelry',29.99,50,'05');

#Update the stock after a sale.
UPDATE Products
SET Stock = Stock - 5
WHERE ProductID = 2;
