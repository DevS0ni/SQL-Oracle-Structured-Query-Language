-- Question 1
SELECT Cust_id, MAX(Purch_amt) AS "Highest Purchase Amount", Ord_date
FROM Order_Mst
GROUP BY Cust_id, Ord_date
HAVING MAX(Purch_amt) > 2000;

-- Question 2
SELECT Cust_id, MAX(Purch_amt) AS "Highest Purchase Amount", Ord_date
FROM Order_Mst
GROUP BY Cust_id, Ord_date
HAVING MAX(Purch_amt) BETWEEN 2000 AND 6000;

-- Question 3
SELECT Cust_id, MAX(Purch_amt) AS "Highest Purchase Amount", Ord_date
FROM Order_Mst
GROUP BY Cust_id, Ord_date
HAVING MAX(Purch_amt) IN (2000, 3000, 5760, 6000);

-- Question 4
SELECT Cust_id, MAX(Purch_amt) AS "Highest Purchase Amount"
FROM Order_Mst
WHERE Cust_id BETWEEN 3002 AND 3007
GROUP BY Cust_id;

-- Question 5
SELECT Sale_Id, MAX(Purch_amt) AS "Highest Purchase Amount"
FROM Order_Mst
WHERE Sale_Id BETWEEN 5003 AND 5008
GROUP BY Sale_Id;

-- Question 6
SELECT COUNT(*) AS "Order Count"
FROM Order_Mst
WHERE Ord_date = TO_DATE('2012-08-17', 'YYYY-MM-DD');
