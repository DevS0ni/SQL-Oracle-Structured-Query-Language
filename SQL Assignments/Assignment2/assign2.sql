-- Task 1: Create table Sales_Mst
CREATE TABLE Sales_Mst (
    Sale_Id INT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    City VARCHAR(20),
    Comm NUMBER(5,2) NOT NULL
);

-- Task 2: Write a Query to Insert six records in Sales_Mst
INSERT INTO Sales_Mst (Sale_Id, Name, City, Comm)
VALUES
    (5001, 'James Hoog', 'New York', 0.15),
    (5002, 'Nail Knite', 'Paris', 0.13),
    (5003, 'Pit Alex', 'London', 0.11),
    (5004, 'Mc Lyon', 'Paris', 0.14),
    (5005, 'Paul Adam', NULL, 0.13),
    (5006, 'Lauson Hen', 'Rome', 0.12);

-- Task 3: Write a SQL statement to display specific columns like name and commission for all salesmen
SELECT Name, Comm FROM Sales_Mst;

-- Task 4: Write a SQL statement to display names and city of salesmen who belong to the city of Paris
SELECT Name, City FROM Sales_Mst WHERE City = 'Paris';
