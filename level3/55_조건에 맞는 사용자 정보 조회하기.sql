--https://school.programmers.co.kr/learn/courses/30/lessons/164670
SELECT 
    b.writer_id,
    nickname,
    CONCAT(city, " ", street_address1, " ", street_address2) 전체주소,
    CONCAT(substr(TLNO,1,3), '-', substr(TLNO,4,4), '-', substr(TLNO,8,4)) 전화번호
FROM used_goods_board b
    INNER JOIN used_goods_user u
    ON b.writer_id = u.user_id
GROUP BY b.writer_id
HAVING count(*) >= 3
ORDER BY u.user_id DESC