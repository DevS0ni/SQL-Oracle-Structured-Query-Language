-- 1. Create table Movie_Mst
CREATE TABLE Movie_Mst (
    mov_id INT PRIMARY KEY,
    Mov_title VARCHAR(30) UNIQUE,
    Mov_year NUMBER(5) NOT NULL,
    Mov_time NUMBER(4),
    Mov_lan VARCHAR(20),
    Mov_dt_rel DATE NOT NULL
);

-- 2. Insert six records into Movie_Mst
INSERT INTO Movie_Mst (mov_id, Mov_title, Mov_year, Mov_time, Mov_lan, Mov_dt_rel)
VALUES
(901, 'Vertigo', 1958, 128, 'English', TO_DATE('24-aug-1958', 'dd-mon-yyyy')),
(902, 'The Innocents', 1961, 100, 'English', TO_DATE('19-feb-1962', 'dd-mon-yyyy')),
(903, 'The Deer Hunter', 1965, 216, 'English', TO_DATE('08-mar-1965', 'dd-mon-yyyy')),
(904, 'Ki and Kaa', 2017, 183, 'Hindi', TO_DATE('01-jan-2017', 'dd-mon-yyyy')),
(905, 'Abc', 2017, 160, 'Hindi', TO_DATE('09-sep-2017', 'dd-mon-yyyy'));
