--https://school.programmers.co.kr/learn/courses/30/lessons/144853
SELECT
    book_id,
    DATE_FORMAT(published_date, "%Y-%m-%d") as published_date
FROM book
WHERE published_date LIKE "2021%"
AND category = "인문"
ORDER BY published_date