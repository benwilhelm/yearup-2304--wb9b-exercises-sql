-- SQLite

-- ex1
-- table name is Products

-- ex2
SELECT ProductID, ProductName, UnitPrice
FROM Products;

-- ex3 
SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;

-- ex4
SELECT ProductName, UnitPrice 
FROM Products 
WHERE UnitPrice <= 7.5;

--ex5
SELECT ProductName, UnitsInStock, UnitPrice
FROM Products 
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

-- ex6 
SELECT ProductName, UnitsInStock, UnitPrice
FROM Products 
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName;

-- ex7
SELECT ProductName, UnitsInStock, UnitsOnOrder
FROM Products 
WHERE UnitsInStock = 0
  AND UnitsOnOrder >= 1
ORDER BY ProductName;
