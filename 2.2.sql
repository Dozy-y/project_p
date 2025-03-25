INSERT INTO Employee (employee_id, first_name, last_name, birth_date, hire_date, position, salary, phone_number, email, address, supervisor_id, department, experience_years) VALUES
(1, 'Ivan', 'Ivanov', '1980-05-15', '2010-06-01', 'CEO', 100000.00, '+79001234560', 'ivan.ivanov@company.com', 'Moscow, Red Square 1', 1, 'Executive', 13),
(2, 'Olga', 'Petrova', '1985-08-22', '2015-03-10', 'CTO', 85000.00, '+79001234561', 'olga.petrova@company.com', 'St. Petersburg, Nevsky Prospect 15', 1, 'IT', 8),
(3, 'Sergey', 'Sidorov', '1990-12-10', '2018-07-15', 'HR Director', 75000.00, '+79001234562', 'sergey.sidorov@company.com', 'Ekaterinburg, Lenina 42', 1, 'HR', 5),
(4, 'Anna', 'Smirnova', '1992-03-05', '2019-11-20', 'Senior Developer', 65000.00, '+79001234563', 'anna.smirnova@company.com', 'Kazan, Bauman 7', 2, 'IT', 4),
(5, 'Dmitry', 'Kozlov', '1988-07-12', '2016-09-01', 'DevOps Engineer', 72000.00, '+79001234564', 'dmitry.kozlov@company.com', 'Novosibirsk, Sovetskaya 25', 2, 'IT', 7),
(6, 'Maria', 'Pavlova', '1987-09-09', '2017-08-15', 'Chief Accountant', 68000.00, '+79001234565', 'maria.pavlova@company.com', 'Sochi, Primorskaya 8', 1, 'Finance', 6),
(7, 'Alexey', 'Morozov', '1993-04-18', '2021-02-01', 'Sales Manager', 53000.00, '+79001234566', 'alexey.morozov@company.com', 'Vladivostok, Svetlanskaya 3', 1, 'Sales', 2),
(8, 'Elena', 'Fedorova', '1995-11-28', '2020-04-12', 'Marketing Lead', 61000.00, '+79001234567', 'elena.fedorova@company.com', 'Kaliningrad, Teatralnaya 11', 1, 'Marketing', 3),
(9, 'Andrey', 'Volkov', '1991-06-30', '2019-05-10', 'Tech Support Lead', 57000.00, '+79001234568', 'andrey.volkov@company.com', 'Rostov-on-Don, Budennovsky 9', 2, 'Support', 4),
(10, 'Natalia', 'Orlova', '1994-01-25', '2022-03-22', 'Junior HR Specialist', 43000.00, '+79001234569', 'natalia.orlova@company.com', 'Samara, Gagarina 16', 3, 'HR', 1);

UPDATE Employee
SET salary = 3200.00
WHERE employee_id = 5;

UPDATE Employee
SET department = 'Junior Training'
WHERE position = 'Trainer';

DELETE FROM Employee
WHERE employee_id = 10;

DELETE FROM Employee
WHERE department = 'Archive';

SELECT * FROM Employee
WHERE hire_date > '2020-01-01';

SELECT 
    first_name, 
    EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM hire_date) AS experience
FROM Employee;
