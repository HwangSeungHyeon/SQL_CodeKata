--https://school.programmers.co.kr/learn/courses/30/lessons/164668
SELECT
    u.user_id,
    nickname,
    SUM(price) as total_sales
FROM used_goods_board b
    LEFT OUTER JOIN used_goods_user u
    ON b.writer_id = u.user_id
WHERE status = "done"
GROUP BY b.writer_id
HAVING SUM(price) >= 700000
ORDER BY total_sales