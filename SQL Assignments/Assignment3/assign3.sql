-- 1. Create table Cust_Mst
CREATE TABLE Cust_Mst (
    Cust_id INT PRIMARY KEY,
    Cust_Name VARCHAR(20) NOT NULL
);

-- 2. Create table Order_Mst
CREATE TABLE Order_Mst (
    Ord_no INT PRIMARY KEY,
    Purch_amt NUMBER(12) NOT NULL,
    Ord_date DATE NOT NULL,
    Cust_id INT,
    Sale_Id INT,
    FOREIGN KEY (Cust_id) REFERENCES Cust_Mst(Cust_id),
    FOREIGN KEY (Sale_Id) REFERENCES Sales_Mst(Sale_Id)
);

-- 3. Insert six records into Order_Mst
INSERT INTO Order_Mst (Ord_no, Purch_amt, Ord_date, Cust_id, Sale_Id)
VALUES
    (70001, 1500, TO_DATE('10-aug-2012', 'dd-mon-yyyy'), 3001, 5002),
    (70002, 1200, TO_DATE('09-nov-2013', 'dd-mon-yyyy'), 3002, 5001),
    (70003, 1000, TO_DATE('10-may-2017', 'dd-mon-yyyy'), 3003, 5002),
    (70004, 2400, TO_DATE('27-jul-2012', 'dd-mon-yyyy'), 3004, 5003),
    (70005, 900, TO_DATE('08-mar-2013', 'dd-mon-yyyy'), 3005, 5004),
    (70006, 1100, TO_DATE('21-sep-2012', 'dd-mon-yyyy'), 3006, 5005);
