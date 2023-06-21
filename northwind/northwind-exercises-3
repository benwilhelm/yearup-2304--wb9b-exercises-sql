-- -- ex 1

-- SELECT ProductName, UnitPrice 
-- FROM Products 
-- WHERE UnitPrice = (
--   SELECT MAX(UnitPrice)
--   FROM Products
-- );

-- -- ex 2 

SELECT OrderID, ShipName, ShipAddress, ShipVia
FROM Orders 
WHERE ShipVia = (
  SELECT ShipperID 
  FROM Shippers
  WHERE CompanyName='Federal Shipping'
);

-- ex3 

SELECT OrderID, ProductID
FROM `Order Details`
WHERE ProductID = (
  SELECT ProductID 
  FROM Products 
  WHERE ProductName="Sasquatch Ale"
);

-- ex4

SELECT CustomerID, CompanyName 
FROM Customers
WHERE CustomerID = (
  SELECT CustomerID
  FROM Orders
  WHERE OrderID = 10266
);



-- ex5 

