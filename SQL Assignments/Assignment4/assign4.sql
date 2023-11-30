-- Question 1
SELECT Ord_date, Sale_Id, Ord_no, Purch_amt
FROM Order_Mst;

-- Question 2
SELECT DISTINCT Sale_Id
FROM Order_Mst;

-- Question 3
SELECT Cust_Name AS "Customer Name"
FROM Cust_Mst;

-- Question 4
SELECT Ord_no, Ord_date, Purch_amt
FROM Order_Mst
WHERE Sale_Id = 5001;

-- Question 5
SELECT UPPER(Cust_Name) AS "Upper Case Name", LOWER(Cust_Name) AS "Lower Case Name"
FROM Cust_Mst;
