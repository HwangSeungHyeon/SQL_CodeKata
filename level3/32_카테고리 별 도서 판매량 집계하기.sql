--https://school.programmers.co.kr/learn/courses/30/lessons/144855
/*2022년 1월의 카테고리 별 도서 판매량을 합산하고, 카테고리(CATEGORY), 총 판매량(TOTAL_SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 카테고리명을 기준으로 오름차순 정렬해주세요.*/

SELECT
    book.category as category,
    SUM(book_sales.sales) as total_sales
FROM book
    LEFT OUTER JOIN book_sales
    ON book.book_id = book_sales.book_id
WHERE DATE_FORMAT(book_sales.sales_date, '%Y-%m') = '2022-01'
GROUP BY category
ORDER BY category