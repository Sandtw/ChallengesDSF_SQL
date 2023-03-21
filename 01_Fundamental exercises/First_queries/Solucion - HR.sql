-- Ejercicios: HR
-- ==========================
-- 1. Muestre por region la cantidad de empleados asignados
SELECT r.region_name as Region, COUNT(DISTINCT(e.employee_id)) as Cantidad FROM employees AS e
INNER JOIN departments AS d 
ON e.department_id = d.department_id
INNER JOIN locations AS l 
ON d.location_id = l.location_id
INNER JOIN countries AS c
ON l.country_id = c.country_id
INNER JOIN regions as r
ON c.region_id = r.region_id
GROUP BY r.region_name


-- 2. Muestre los cantidad de empleados por departamento

SELECT d.department_name as Departamento, COUNT(DISTINCT(e.employee_id)) as Cantidad FROM employees AS e
INNER JOIN departments AS d 
ON e.department_id = d.department_id
INNER JOIN locations AS l 
ON d.location_id = l.location_id
INNER JOIN countries AS c
ON l.country_id = c.country_id
INNER JOIN regions as r
ON c.region_id = r.region_id
GROUP BY d.department_name 
ORDER BY Cantidad DESC;


-- 3. Muestre los departamentos que no tienen asignados empleados

SELECT * FROM employees

SELECT e.first_name, e.last_name, d.department_name as Departamento FROM employees AS e
LEFT JOIN departments AS d 
ON e.department_id = d.department_id
WHERE e.department_id IS NULL;

-- 4. Muestre los 5 empleados con mayor antiguedad en la empresa
SELECT TOP(5) first_name, hire_date
FROM employees
ORDER BY hire_date ASC;

-- 5. Muestre los datos de los empleados que tiene la mayor cantidad de registros en la tabla job_history
SELECT e.first_name, jh.start_date, jh.end_date FROM job_history AS jh
INNER JOIN employees AS e
ON jh.employee_id = e.employee_id;
