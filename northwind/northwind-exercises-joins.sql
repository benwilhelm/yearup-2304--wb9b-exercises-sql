-- SQLite

-- ex1

SELECT ProductID, ProductName, UnitPrice, CategoryName
FROM Products-- left
JOIN Categories-- right
  ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- ex2
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products
JOIN Suppliers
  ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice >= 75;

-- ex3 
SELECT ProductID, ProductName, UnitPrice, CompanyName
FROM Products-- left
JOIN Suppliers-- right
  ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;

-- ex4 
SELECT ProductName, UnitPrice, CategoryName
FROM Products 
JOIN Categories
  ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (
  SELECT MAX(UnitPrice)
  FROM Products
);

SELECT ProductName, UnitPrice, CategoryName
FROM Products
JOIN Categories
  ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice IN (
  SELECT MAX(UnitPrice)
  FROM Products
  GROUP BY CategoryID
);

-- ex5
SELECT OrderID, ShipName, ShipAddress, ShipCountry, CompanyName
FROM Orders 
JOIN Shippers 
  ON Orders.ShipVia = Shippers.ShipperID
WHERE ShipCountry = "Germany";

-- ex6 

SELECT Orders.OrderId, OrderDate, ShipName, ShipAddress, ProductName
FROM Orders
JOIN `Order Details`
  ON Orders.OrderID = `Order Details`.OrderID 
JOIN Products 
  ON `Order Details`.ProductID = Products.ProductId
WHERE Products.ProductName = "Sasquatch Ale";