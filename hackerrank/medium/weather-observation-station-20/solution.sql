/*
Enter your query here.
*/
WITH Ranked AS (
    SELECT
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS total_count
    FROM STATION
)
SELECT ROUND(AVG(LAT_N), 4)
FROM Ranked
WHERE rn IN (
    FLOOR((total_count + 1) / 2),
    FLOOR((total_count + 2) / 2)
);
