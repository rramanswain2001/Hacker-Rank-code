SET NOCOUNT ON;
WITH Numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM Numbers WHERE n < 1000
),
Primes AS (
    SELECT n
    FROM Numbers n1
    WHERE NOT EXISTS (
        SELECT 1
        FROM Numbers n2
        WHERE n2.n BETWEEN 2 AND FLOOR(SQRT(n1.n))
          AND n1.n % n2.n = 0
    )
)
SELECT STRING_AGG(CAST(n AS VARCHAR), '&')
FROM Primes
OPTION (MAXRECURSION 1000);