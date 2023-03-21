-- Ejercicios: Base Northwind
-- ==========================

-- 1. Muestre los registros de la tabla de empleados.
SELECT * FROM Employees

-- 2. Muestre los nombres y apellidos de los empleados.

SELECT [FirstName],[LastName] FROM Employees

-- 3. Muestre los nombres de las ciudades que aparecen en la 
-- tabla de empleados. (No mostrar 2 veces un mismo nombre de ciudad).
SELECT DISTINCT city FROM Employees

-- 4. Muestre los nombres de productos y precios unitarios de la tabla de productos.
SELECT [ProductName], [UnitPrice] FROM Products

-- 5. Muestre de la tabla de empleados que viven en USA.
SELECT * FROM Employees 
WHERE Country LIKE'%USA%'

-- 6. Muestre los clientes: listar nombre de la empresa de todos 
SELECT ContactName, CompanyName FROM Customers

-- los clientes que viven en la ciudades London, Bräcke, Cowes.
SELECT * FROM Customers
WHERE City IN('London','Bräcke','Cowes')

-- 7. Muestre las ciudades con su cantidad de clientes
SELECT city, count(*) AS Cantidad FROM Customers 
GROUP BY City;

-- 8. Muestre los clientes que tienen la region en blanco (NULA).
SELECT * FROM Customers
WHERE Region IS NULL;

-- 9. Muestre los 5 productos con mayor precio unitario.
SELECT TOP(5) * FROM Products
ORDER BY UnitPrice DESC;

-- 10. Muestre los 5 productos con menor precio unitario.
SELECT TOP(5) * FROM Products
ORDER BY UnitPrice ASC;

-- 11. Muestre el conteo de empleados agrupados por el cargo.

SELECT Title, COUNT(*) as Cantidad
FROM Employees
GROUP BY Title;

-- 12. Muestre los clientes y el total de compras efectuadas.

SELECT c.CompanyName AS Cliente,p.ProductName AS Producto,od.Quantity*od.UnitPrice AS 'Total Compra' From Customers AS c
INNER JOIN dbo.Orders AS o
ON c.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID


-- 13. Muestre los 5 clientes que mas compraron.

SELECT TOP(5) c.CompanyName AS Cliente,p.ProductName AS Producto,od.Quantity*od.UnitPrice AS 'Total Compra' From Customers AS c
INNER JOIN dbo.Orders AS o
ON c.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
ORDER BY [Total Compra] DESC;


-- 14. Muestre los proveedores y la cantidad de productos que se han vendido.
SELECT s.CompanyName as Proveedor, p.ProductName AS Producto,OD.Quantity AS 'Cantidad vendida'
FROM Suppliers AS s
INNER JOIN Products AS p
ON s.SupplierID = p.SupplierID
INNER JOIN [Order Details] as OD
ON p.ProductID = OD.ProductID

-- 15. Muestre la cantidad de pedidos y la suma de valorizados (precio por cantidad) 
-- agrupados por año. Ordénelo por año.
SELECT DATEPART(YY,o.OrderDate) as Fecha, sum(OD.Quantity*OD.UnitPrice) AS 'Suma de valorizados'
FROM Suppliers AS s
INNER JOIN Products AS p
ON s.SupplierID = p.SupplierID
INNER JOIN [Order Details] as OD
ON p.ProductID = OD.ProductID
INNER JOIN Orders AS o
ON OD.OrderID = o.OrderID
GROUP BY DATEPART(YY,o.OrderDate)
ORDER BY Fecha ASC

-- 16. Muestre los clientes agrupados por las categorias de productos.
SELECT ca.CategoryName AS Categoria, count(DISTINCT(C.CompanyName)) AS 'Cantidad de clientes' FROM Customers AS C
INNER JOIN dbo.Orders AS o
ON c.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
INNER JOIN Categories AS ca 
ON p.CategoryID = ca.CategoryID
GROUP BY ca.CategoryName


-- 17. Muestre el total de pedidos y el importe total por cada uno de ellos.
SELECT p.ProductName,sum(p.UnitsOnOrder) AS 'Total de Pedidos' ,sum(OD.Quantity*OD.UnitPrice) AS 'Importe Total'
FROM Suppliers AS s
INNER JOIN Products AS p
ON s.SupplierID = p.SupplierID
INNER JOIN [Order Details] as OD
ON p.ProductID = OD.ProductID
INNER JOIN Orders AS o
ON OD.OrderID = o.OrderID
WHERE p.UnitsOnOrder>0
GROUP BY p.ProductName
ORDER BY [Importe Total] DESC;

-- 18. Muestre el promedio de ventas por empleado.
SELECT e.EmployeeID,e.FirstName, ROUND(AVG(od.Quantity*od.UnitPrice),1) AS Promedio FROM Employees AS e
INNER JOIN Orders AS o
ON E.EmployeeID = O.EmployeeID
INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
GROUP BY e.EmployeeID, e.FirstName
ORDER BY e.EmployeeID ASC

-- 19. Muestre los clientes y sus ventas que superen los 5000
SELECT c.CompanyName, p.ProductName AS Producto,od.Quantity*od.UnitPrice AS 'Total Compra' From Customers AS c
INNER JOIN dbo.Orders AS o
ON c.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
WHERE od.Quantity*od.UnitPrice >5000
ORDER BY [Total Compra] DESC;


-- 20. Muestre las compras de productos de los clientes en Marzo del 1996, 1997 y 1998
SELECT o.OrderDate, p.ProductName AS Producto,od.Quantity*od.UnitPrice AS 'Total Compra' From Customers AS c
INNER JOIN dbo.Orders AS o
ON c.CustomerID = O.CustomerID
INNER JOIN dbo.[Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN dbo.Products AS p
ON od.ProductID = p.ProductID
WHERE O.OrderDate >='1996-03-01' AND o.OrderDate<= '1996-03-31' AND O.OrderDate >='1997-03-01' AND o.OrderDate<= '1997-03-31' AND O.OrderDate >='1998-03-01' AND o.OrderDate<= '1998-03-31'
ORDER BY [Total Compra] DESC;