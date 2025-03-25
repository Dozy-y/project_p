INSERT INTO Employee (
    first_name, 
    last_name, 
    birth_date, 
    hire_date, 
    position, 
    salary
) VALUES (
    'Anna', 
    'Smith', 
    '1995-03-25', 
    '2023-01-10', 
    'Trainer', 
    3000.00
);

INSERT INTO Employee 
VALUES (
    DEFAULT, 
    'Mike', 
    'Brown', 
    '1988-07-12', 
    '2020-05-15', 
    'Manager', 
    4500.00, 
    '+123456789', 
    'mike@example.com', 
    'London', 
    1, -- supervisor_id
    'Training', 
    3
);

UPDATE Employee
SET salary = 3200.00
WHERE employee_id = 5;

UPDATE Employee
SET department = 'Junior Training'
WHERE position = 'Trainer';

DELETE FROM Employee
WHERE employee_id = 10;

DELETE FROM Employee
WHERE department = 'Archived';

SELECT * FROM Employee
WHERE hire_date > '2020-01-01';

SELECT 
    first_name, 
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date) AS experience
FROM Employee;
