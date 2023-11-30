-- Question 1
SELECT SUM(Purch_amt) AS "Total Purchase Amount"
FROM Order_Mst;

-- Question 2
SELECT AVG(Purch_amt) AS "Average Purchase Amount"
FROM Order_Mst;

-- Question 3
SELECT Cust_id, COUNT(DISTINCT Sale_Id) AS "Number of Salesmen"
FROM Order_Mst
GROUP BY Cust_id;

-- Question 4
SELECT COUNT(DISTINCT Cust_id) AS "Number of Customers"
FROM Order_Mst;

-- Question 5
SELECT MAX(Purch_amt) AS "Maximum Purchase Amount"
FROM Order_Mst;

-- Question 6
SELECT MIN(Purch_amt) AS "Minimum Purchase Amount"
FROM Order_Mst;

-- Question 7
SELECT Cust_id, MAX(Grade) AS "Highest Grade"
FROM Cust_Mst
GROUP BY Cust_id;

-- Question 8
SELECT Sale_Id, MAX(Purch_amt) AS "Highest Purchase Amount"
FROM Order_Mst
WHERE Ord_date = TO_DATE('2012-08-17', 'YYYY-MM-DD')
GROUP BY Sale_Id;
