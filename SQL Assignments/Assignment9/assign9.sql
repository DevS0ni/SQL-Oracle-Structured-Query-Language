-- 1. Query to find the name and year of the movies
SELECT Mov_title, Mov_year
FROM Movie_Mst;

-- 2. Query to find the year when the movie Ki and Kaa released
SELECT Mov_year
FROM Movie_Mst
WHERE Mov_title = 'Ki and Kaa';

-- 3. Query to find the movie which was released in the year 1965
SELECT *
FROM Movie_Mst
WHERE Mov_year = 1965;

-- 4. Query to find the movies which were released before 1998
SELECT *
FROM Movie_Mst
WHERE Mov_year < 1998;

-- 5. Query to return the name of all reviewers and name of movies together in a single list
SELECT R.Reviewer_name, M.Mov_title
FROM Reviewer R
JOIN Review Rv ON R.Reviewer_ID = Rv.Reviewer_ID
JOIN Movie_Mst M ON Rv.Mov_id = M.mov_id;

-- 6. Query to find the titles of the movies with ID 902, 904, 905
SELECT Mov_title
FROM Movie_Mst
WHERE mov_id IN (902, 904, 905);
