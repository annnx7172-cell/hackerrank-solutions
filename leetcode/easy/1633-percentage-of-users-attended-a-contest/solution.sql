SELECT R.contest_id, round(count(R.contest_id)*100/(SELECT COUNT(*)FROM Users),2) AS percentage
FROM Users as u
RIGHT Join Register as R
on u.user_id= R.user_id
GROUP BY R.contest_id
ORDER BY round(count(R.contest_id)*100/(SELECT COUNT(*)FROM Users),2) DESC, R.contest_id;