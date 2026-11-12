WITH StudentCounts AS (
    SELECT
        hacker_id,
        COUNT(*) AS total_challenges
    FROM Challenges
    GROUP BY hacker_id
),
CountFrequency AS (
    SELECT
        total_challenges,
        COUNT(*) AS frequency
    FROM StudentCounts
    GROUP BY total_challenges
)
SELECT
    H.hacker_id,
    H.name,
    SC.total_challenges
FROM Hackers H
JOIN StudentCounts SC
    ON H.hacker_id = SC.hacker_id
JOIN CountFrequency CF
    ON SC.total_challenges = CF.total_challenges
WHERE
    SC.total_challenges = (
        SELECT MAX(total_challenges)
        FROM StudentCounts
    )
    OR CF.frequency = 1
ORDER BY
    SC.total_challenges DESC,
    H.hacker_id ASC;
