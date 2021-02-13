--Hackerrank SQL Practice: Ms SQL

--The PADS 

SELECT
  CONCAT(Name, '(', LEFT(Occupation, 1), ')')
FROM Occupations
ORDER BY Name;


SELECT
  CONCAT('There are a total of ', occupation_count, ' ', LOWER(occupation), 's.')
FROM (SELECT
  occupation,
  COUNT(occupation) AS occupation_count
FROM Occupations
GROUP BY occupation) t
ORDER BY occupation_count, occupation;