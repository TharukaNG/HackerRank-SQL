--Hackerrank SQL Practice: Ms SQL

--The Occupations

WITH cte
AS (SELECT
  RANK() OVER (PARTITION BY Occupation ORDER BY Name) AS Rank,
  CASE
    WHEN Occupation = 'Doctor' THEN Name
    ELSE NULL
  END AS doctor,
  CASE
    WHEN Occupation = 'Professor' THEN Name
    ELSE NULL
  END AS prof,
  CASE
    WHEN Occupation = 'Singer' THEN Name
    ELSE NULL
  END AS singer,
  CASE
    WHEN Occupation = 'Actor' THEN Name
    ELSE NULL
  END AS actor
FROM Occupations)

SELECT
  MIN(doctor),
  MIN(prof),
  MIN(singer),
  MIN(actor)
FROM cte
GROUP BY Rank