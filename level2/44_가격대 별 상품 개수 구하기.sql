--https://school.programmers.co.kr/learn/challenges?order=acceptance_desc&page=1&search=%EA%B0%80%EA%B2%A9%EB%8C%80
SELECT
    FLOOR(price/10000)*10000 price_group,
    COUNT(*) products
FROM product
GROUP BY price_group
ORDER BY price