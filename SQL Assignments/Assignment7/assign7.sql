-- Question 1
SELECT *
FROM Sales_Mst
WHERE City IN ('Paris', 'Rome');

-- Question 2
SELECT *
FROM Sales_Mst
WHERE City = 'Paris' OR City = 'Rome';

-- Question 3
SELECT Sale_Id, name, City, comm
FROM Sales_Mst
WHERE City NOT IN ('Paris', 'Rome');

-- Question 4
SELECT *
FROM Cust_mst
WHERE Cust_id IN (3007, 3008, 3009);

-- Question 5
SELECT *
FROM Sales_Mst
WHERE comm BETWEEN 0.12 AND 0.14;

-- Question 6
SELECT *
FROM Sales_Mst
WHERE UPPER(SUBSTR(name, 1, 1)) BETWEEN 'A' AND 'K';

-- Question 7
SELECT *
FROM Sales_Mst
WHERE UPPER(SUBSTR(name, 1, 1)) NOT BETWEEN 'A' AND 'L';

-- Question 8
SELECT *
FROM Cust_mst
WHERE UPPER(SUBSTR(Cust_Name, -1, 1)) = 'N';
