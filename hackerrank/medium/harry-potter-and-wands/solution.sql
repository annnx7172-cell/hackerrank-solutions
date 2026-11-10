/*
Enter your query here.
*/
SELECT w.id,p.age,w.coins_needed,w.power
FROM Wands as w
join Wands_Property as p
on w.code = p. code 
where p.is_evil = 0
AND w.coins_needed=(
    SELECT MIN(coins_needed)
    FROM Wands AS W2
    JOIN Wands_Property AS P2
    ON W2.CODE= P2.CODE
    WHERE P2.is_evil = 0
    and P2.age= p.age 
    and W2.power= w.power
)
order by w.power DESC,p.age DESC

