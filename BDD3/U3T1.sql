-- Muestra todos los Departamentos (Departments).
SELECT * FROM DEPARTMENTS; 
-- Muestra el primer nombre (first_name), correo electrónico (email) y el salario (salary) de todos los empleados (Employees).

SELECT FIRST_NAME, EMAIL, SALARY FROM EMPLOYEES;

-- Muestra el título (job_title) y el salario mínimo (min_salary) de todos los trabajos (Jobs)

SELECT JOB_TITLE, MIN_SALARY FROM JOBS; 

-- Muestra el título (job_title) y el salario máximo (max_salary) de todos los trabajos (Jobs), cuyo salario mínimo (min_salary), sea mayor o igual 6000 pesos.

SELECT JOB_TITLE, MAX_SALARY FROM JOBS WHERE MIN_SALARY >= 6000; 


--COMPROBACIÓN DEL PUNTO ANTERIÓR
SELECT JOB_TITLE, MAX_SALARY, MIN_SALARY FROM JOBS WHERE MIN_SALARY >= 6000; 

-- Muestra el (el primer nombre) firstname y el salario (salary) de los empleados (employees) cuyo salario (salary) se encuentre entre 9000 y 11000 pesos.

SELECT FIRST_NAME, SALARY FROM EMPLOYEES WHERE SALARY >= 9000 AND SALARY <= 11000;

-- Compruebe si existe un país (countries) denominado (country_name) Italy.

SELECT COUNTRY_NAME FROM COUNTRIES WHERE COUNTRY_NAME='Italy';

-- Muestre el nombre de todos los países (country_name) que estén registrados que no sea Israel.

SELECT COUNTRY_NAME FROM COUNTRIES WHERE COUNTRY_NAME != 'Israel';

-- Muestre el nombre (department_name) y la localización (location_id) de todos los departamentos (Departments), cuya localización sea igual a 1400 o 1800 en una misma consulta.

SELECT DEPARTMENT_NAME, LOCATION_ID FROM DEPARTMENTS WHERE LOCATION_ID = 1400 OR LOCATION_ID = 1800; 

-- Muestra el id de empleado (employee_id), fecha de inicio (start_date) y la fecha de término (end_date) de todos los historiales de trabajo (job_history), cuya fecha de termina haya sido antes del 31/12/2007.

SELECT EMPLOYEE_ID, START_DATE, END_DATE FROM JOB_HISTORY WHERE END_DATE < TO_DATE('31-12-2007', 'DD-MM-YYYY');

-- Muestre todos los departamentos (Departments) que carezcan de manager (manager_id)

SELECT * FROM DEPARTMENTS WHERE MANAGER_ID IS NULL; 



