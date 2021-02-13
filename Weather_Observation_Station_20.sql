--Hackerrank SQL Practice: Ms SQL

--Weather Observation Station 20

DECLARE @c BIGINT = (SELECT COUNT(*) FROM station);

SELECT CAST(AVG(LAT_N) AS decimal(8,4))--handle odd and even numbers
FROM (
    SELECT LAT_N FROM station
     ORDER BY LAT_N
     OFFSET (@c - 1) / 2 ROWS
     FETCH NEXT 1 + (1 - @c % 2) ROWS ONLY--handle odd and even numbers
) AS x;