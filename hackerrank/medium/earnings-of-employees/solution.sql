/*
Enter your query here.
*/
SELECT 
    salary * months AS total_earnings,
    COUNT(*) 
FROM Employee
GROUP BY salary * months
ORDER BY total_earnings DESC
LIMIT 1;
