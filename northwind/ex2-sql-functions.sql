-- SQLite

-- ex 1
SELECT COUNT(*)
FROM Suppliers;

-- ex2 
-- Skipped, no salary column 

-- ex3 
SELECT MIN(UnitPrice) 
FROM Products;

-- ex4 
SELECT AVG(UnitPrice)
FROM Products;

-- ex5
SELECT MAX(UnitPrice)
FROM Products;

-- ex6 
SELECT SupplierID, COUNT(*) 
FROM Products 
GROUP BY SupplierID;

-- ex7 
SELECT CategoryID, AVG(UnitPrice)
FROM Products 
GROUP BY CategoryID;

-- ex8
SELECT SupplierID, COUNT(*) 
FROM Products 
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

-- ex9
SELECT 
  ProductID, 
  ProductName, 
  UnitPrice,
  UnitsInStock,
  UnitPrice * UnitsInStock as InventoryValue 
FROM Products
ORDER BY InventoryValue DESC, ProductName;


-- SUM Example
SELECT SupplierId, UnitPrice
FROM Products
ORDER BY SupplierID;

SELECT SupplierId, SUM(UnitPrice) as SupplierValue
FROM Products
GROUP BY SupplierID
ORDER BY SupplierID;