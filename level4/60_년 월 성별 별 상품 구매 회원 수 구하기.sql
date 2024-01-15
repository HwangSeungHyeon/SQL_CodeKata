--https://school.programmers.co.kr/learn/courses/30/lessons/131532
SELECT
    DATE_FORMAT(sales_date, "%Y") year,
    DATE_FORMAT(sales_date, "%m") month,
    gender,
    COUNT(DISTINCT o.user_id) users # 한 유저가 같은 달에 여러번 구매하더라도 1로 카운트 해야됨
FROM online_sale o
    INNER JOIN user_info u
    ON o.user_id = u.user_id
WHERE gender IS NOT NULL
GROUP BY
    year,
    month,
    gender
ORDER BY year, month, gender