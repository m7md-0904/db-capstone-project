CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM Orders
WHERE Quantity > 2; select*from orders;select*from orders;delete from orders where CustomerID is Null; select*from orders;
UPDATE Orders SET Quantity = 3 WHERE OrderID = 6;
UPDATE Orders SET Quantity = 5 WHERE OrderID = 7;
UPDATE Orders SET Quantity = 2 WHERE OrderID = 8;
UPDATE Orders SET Quantity = 4 WHERE OrderID = 9;
UPDATE Orders SET Quantity = 1 WHERE OrderID = 10;
CREATE OR REPLACE VIEW OrdersView AS
SELECT OrderID, MenuID, CustomerID, Quantity, TotalCost
FROM Orders
WHERE Quantity > 2;
SELECT * FROM OrdersView;

