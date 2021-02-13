--Hackerrank SQL Practice: Ms SQL

--Higher Than 75 Marks

SELECT
  Name
FROM Students
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID