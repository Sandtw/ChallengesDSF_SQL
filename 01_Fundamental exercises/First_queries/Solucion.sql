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