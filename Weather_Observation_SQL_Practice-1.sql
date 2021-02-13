--Hackerrank SQL Practice: Ms SQL

--Weather Observation Station 1

    SELECT 
        CITY,
        STATE
    FROM station

--Weather Observation Station 3

    SELECT
    DISTINCT
    CITY
    FROM STATION
    WHERE [ID] % 2 = 0

--Weather Observation Station 4

    SELECT
    COUNT(CITY) - COUNT(DISTINCT CITY)
    FROM STATION

--Weather Observation Station 5

    SELECT TOP (1)
    CITY,
    LEN(CITY)
    FROM STATION
    ORDER BY LEN(CITY) ASC, CITY ASC;

    SELECT TOP (1)
    CITY,
    LEN(CITY)
    FROM STATION
    ORDER BY LEN(CITY) DESC, CITY ASC;

--Weather Observation Station 6

    SELECT DISTINCT
    CITY
    FROM STATION
    WHERE SUBSTRING(CITY, 1, 1) IN ('A', 'E', 'I', 'O', 'U')
    ORDER BY CITY;

--Weather Observation Station 7

    SELECT DISTINCT
    City
    FROM Station
    WHERE RIGHT(City, 1) IN ('a', 'e', 'i', 'o', 'u')

--Weather Observation Station 8 

    SELECT DISTINCT
    City
    FROM Station
    WHERE RIGHT(City, 1) IN ('a', 'e', 'i', 'o', 'u')
    AND LEFT(City, 1) IN ('a', 'e', 'i', 'o', 'u')

--Weather Observation Station 9

    SELECT DISTINCT
    City
    FROM Station
    WHERE LEFT(City, 1) NOT IN ('a', 'e', 'i', 'o', 'u')

--Weather Observation Station 10

    SELECT
    DISTINCT City
    FROM Station 
    WHERE RIGHT(City,1) NOT IN ('a','e','i','o','u')

--Weather Observation Station 11 

    SELECT DISTINCT
    City
    FROM Station
    WHERE RIGHT(City, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
    OR LEFT(City, 1) NOT IN ('a', 'e', 'i', 'o', 'u')

--Weather Observation Station 12

    SELECT DISTINCT
    City
    FROM Station
    WHERE RIGHT(City, 1) NOT IN ('a', 'e', 'i', 'o', 'u')
    AND LEFT(City, 1) NOT IN ('a', 'e', 'i', 'o', 'u')

