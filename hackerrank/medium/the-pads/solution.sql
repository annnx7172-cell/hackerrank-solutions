/*
Enter your query here.
*/

SELECT 
    CASE
       WHEN A>=C+B OR C>=A+B OR B>=A+C THEN 'Not A Triangle'
         WHEN A=B AND B=C THEN 'Equilateral'
        WHEN A=B OR B=C OR C=A THEN 'Isosceles'
        ELSE 'Scalene'
    END 
FROM TRIANGLES  
