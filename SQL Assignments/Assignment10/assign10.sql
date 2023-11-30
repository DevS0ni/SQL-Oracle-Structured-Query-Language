-- 1. Query to prepare a list with salesman name, customer name, and their cities for the salesmen and customers who belong to the same city
SELECT S.Salesman_name, C.Cust_name, C.City
FROM Salesman S
JOIN Customer C ON S.City = C.City;

-- 2. Query to make a list with order no, purchase amount, customer name, and their cities for those orders with order amounts between 500 and 2000
SELECT O.Ord_no, O.Purch_amt, C.Cust_name, C.City
FROM Orders O
JOIN Customer C ON O.Cust_id = C.Cust_id
WHERE O.Purch_amt BETWEEN 500 AND 2000;

-- 3. Query to know which salesman is working for which customer
SELECT S.Salesman_name, C.Cust_name
FROM Salesman S
JOIN Customer C ON S.City = C.City;

-- 4. Query to make a join on the tables salesman, customer, and orders
SELECT S.Salesman_ID, S.Salesman_name, C.Cust_ID, C.Cust_name, O.Ord_no, O.Purch_amt
FROM Salesman S
JOIN Customer C ON S.City = C.City
JOIN Orders O ON C.Cust_ID = O.Cust_id;

-- 5. Query to make a list in ascending order for the customer who works either through a salesman or by own
SELECT C.Cust_name, C.City
FROM Customer C
LEFT JOIN Salesman S ON C.City = S.City
ORDER BY C.Cust_name;

-- 6. Query to make a list in ascending order for the salesmen who work either for one or more customers or not yet joined under any customers
SELECT S.Salesman_name, C.Cust_name
FROM Salesman S
LEFT JOIN Customer C ON S.City = C.City
ORDER BY S.Salesman_name;
