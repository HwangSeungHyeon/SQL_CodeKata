--https://school.programmers.co.kr/learn/courses/30/lessons/144854
SELECT
    book_id,
    author_name,
    DATE_FORMAT(published_date, "%Y-%m-%d") as published_date
FROM book b
    LEFT OUTER JOIN author a
    ON b.author_id = a.author_id
WHERE category = "경제"
ORDER BY published_date