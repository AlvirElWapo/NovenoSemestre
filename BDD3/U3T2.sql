-- Muestra la ciudad (city), el código postal (postal_code) de las locaciones (locations) que sean del pais (countries) México.

SELECT LOCAT.CITY, LOCAT.POSTAL_CODE 
FROM LOCATIONS LOCAT, COUNTRIES COUNTR 
WHERE COUNTR.COUNTRY_ID = LOCAT.COUNTRY_ID 
AND COUNTR.COUNTRY_NAME = 'Mexico';

-- Muestre el primer nombre (first_name) y el nombre del departamento (department_name) de todo los empleados cuyo salario (salary) sea mayor a 6000

SELECT FIRST_NAME, DEPARTMENT_NAME 
FROM EMPLOYEES EMP, DEPARTMENTS DEPT 
WHERE EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
AND EMP.SALARY > 6000; 

-- Muestre el primer nombre (first_name) y el nombre del departamento (department_name) de todo los empleados cuyo salario (salary) sea menor a 6000, renombre las columnas para que las cabeceras se encuentren en español ejemplo "first_name" -- "primer nombre".

SELECT EMP.FIRST_NAME AS "primer nombre", DEPT.DEPARTMENT_NAME AS "nombre de departamento" 
FROM EMPLOYEES EMP, DEPARTMENTS DEPT 
WHERE EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID
AND EMP.SALARY < 6000; 

-- Muestre todos los nombres de trabajos (job_title) en los que haya laborado historicamente el empleado cuyo primer nombre es Peter, usar las tablas Jobs, Job_history y Employees

SELECT J.JOB_TITLE 
FROM JOBS J, JOB_HISTORY JH, EMPLOYEES EMP
WHERE EMP.JOB_ID = J.JOB_ID 
AND JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID 
AND EMP.FIRST_NAME = 'Peter';

-- Muestre todos los nombres de trabajos (job_title) en los que haya laborado historicamente el empleado cuyo primer nombre es Peter, usar las tablas Jobs, Job_history y Employees, renombrando las cabeceras para que aprezcan en español y calificando las tablas.

SELECT J.JOB_TITLE AS "TÍTULO DEL EMPLEADO"
FROM JOBS J, JOB_HISTORY JH, EMPLOYEES EMP
WHERE EMP.JOB_ID = J.JOB_ID 
AND JH.EMPLOYEE_ID = EMP.EMPLOYEE_ID 
AND EMP.FIRST_NAME = 'Peter';

-- Muestre el "nombre de los empleados" (first_name) y "nombre del departamento" (department_name) al que se encuentran inscritos todos los empleados. renombre las cabecers y califique las tablas.

SELECT EMP.FIRST_NAME AS "Nombre de Empleado", DEPT.DEPARTMENT_NAME "Nombre del Departamento"
FROM EMPLOYEES EMP, DEPARTMENTS DEPT
WHERE EMP.DEPARTMENT_ID = DEPT.DEPARTMENT_ID; 



