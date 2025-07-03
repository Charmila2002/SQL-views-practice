CREATE VIEW CustomerTotalSpending
AS
SELECT c.CustomerID,c.CustomerName,
SUM(o.Amount)AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID=o.CustomerID
GROUP BY c.CustomerID,c.CustomerName;
SELECT *FROM CustomerTotalSpending;

CREATE VIEW PublicCustomerData AS
SELECT CustomerID,CustomerName,City
FROM Customers;