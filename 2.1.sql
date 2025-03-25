INSERT INTO Employee (
    first_name, 
    last_name, 
    birth_date, 
    hire_date, 
    position, 
    salary
) VALUES (
    'Анна', 
    'Иванова', 
    '1995-03-25', 
    '2023-01-10', 
    'Тренер', 
    3000.00
);

INSERT INTO Employee 
VALUES (
    DEFAULT, 
    'Михаил', 
    'Петров', 
    '1988-07-12', 
    '2020-05-15', 
    'Менеджер', 
    4500.00, 
    '+79161234567', 
    'mikhail.petrov@example.com', 
    'Москва', 
    1, 
    'Тренинг', 
    3
);

UPDATE Employee
SET salary = 3200.00
WHERE employee_id = 5;

UPDATE Employee
SET department = 'Младшие тренеры'
WHERE position = 'Тренер';

DELETE FROM Employee
WHERE employee_id = 10;

DELETE FROM Employee
WHERE department = 'Архив';

SELECT * FROM Employee
WHERE hire_date > '2020-01-01';

SELECT 
    first_name, 
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date) AS experience
FROM Employee;
