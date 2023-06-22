--ex1 

INSERT INTO Suppliers (
  CompanyName,
  ContactName,
  ContactTitle,
  Address,
  City,
  Region,
  PostalCode,
  Country,
  Phone,
  Fax,
  HomePage
)
VALUES (
  "Nimble Moose LLC",
  "Ben Wilhelm",
  "Head Guy",
  "123 Main St.",
  "Chicago",
  "IL",
  "60660",
  "USA",
  "312-312-3123",
  "312-312-3122",
  "https://nimblemoose.com"
)
RETURNING *;

-- ex2

INSERT INTO Products 
(
  ProductName,
  SupplierID,
  CategoryID,
  QuantityPerUnit,
  UnitPrice,
  UnitsInStock,
  UnitsOnOrder,
  ReorderLevel,
  Discontinued
)
VALUES 
(
  "Frozen Pineapple Pizza",
  31,
  3,
  1,
  5,
  100,
  0,
  10,
  0
)
RETURNING *;

-- ex3 

SELECT ProductID, ProductName, Products.SupplierID, CompanyName
FROM Products
JOIN Suppliers
  ON Products.SupplierID = Suppliers.SupplierID 
ORDER BY ProductID DESC;

-- ex4 

UPDATE Products 
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID=78
RETURNING *;

-- ex5 

SELECT ProductID, ProductName, UnitPrice 
FROM Products 
WHERE SupplierID = 31;

-- ex6 

DELETE FROM Products 
WHERE ProductID=78
RETURNING *;

-- ex7 

DELETE FROM Suppliers 
WHERE SupplierID = 31
RETURNING *;

-- ex8 

SELECT ProductID, ProductName 
FROM Products
ORDER BY ProductID DESC;

-- ex9

SELECT SupplierID, CompanyName
FROM Suppliers 
ORDER BY SupplierID DESC;
