-- https://school.programmers.co.kr/learn/courses/30/lessons/133026
SELECT
    ingredient_type,
    SUM(total_order) as TOTAL_ORDER
FROM first_half f
    LEFT OUTER JOIN icecream_info i
    ON f.flavor = i.flavor
GROUP BY ingredient_type