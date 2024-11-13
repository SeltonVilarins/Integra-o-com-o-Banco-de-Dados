CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    location TEXT
);

CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    salary REAL,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (id, name, location) VALUES (1, 'Recursos Humanos', 'São Paulo');
INSERT INTO departments (id, name, location) VALUES (2, 'Financeiro', 'Rio de Janeiro');
INSERT INTO departments (id, name, location) VALUES (3, 'Tecnologia', 'Belo Horizonte');

INSERT INTO employees (id, name, salary, department_id) VALUES (1, 'Alice', 5000, 1);
INSERT INTO employees (id, name, salary, department_id) VALUES (2, 'Bob', 7000, 2);
INSERT INTO employees (id, name, salary, department_id) VALUES (3, 'Carlos', 6500, 2);
INSERT INTO employees (id, name, salary, department_id) VALUES (4, 'David', 4500, 3);
INSERT INTO employees (id, name, salary, department_id) VALUES (5, 'Eva', 8000, 3);

SELECT*FROM employees

SELECT employees.name AS funcionario, departments.name AS departamento
FROM employees
JOIN departments ON employees.department_id = departments.id
WHERE employees.salary > 6000;

UPDATE employees
SET salary = 5500
WHERE name = 'Alice';

DELETE FROM employees
WHERE name = 'David';

SELECT name AS funcionario, salary AS salario
FROM employees;
