--https://school.programmers.co.kr/learn/courses/30/lessons/131533

SELECT
    product_code,
    SUM(sales_amount)*price AS sales
FROM product AS p
    LEFT OUTER JOIN offline_sale AS os
    ON p.product_id = os.product_id
GROUP BY product_code
ORDER BY sales desc, product_code