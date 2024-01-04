--https://school.programmers.co.kr/learn/courses/30/lessons/131116
SELECT category, price max_price, product_name
FROM food_product
WHERE price IN (SELECT MAX(price)
               FROM food_product
               GROUP BY category)
GROUP BY category
HAVING category IN ("과자", "국", "김치", "식용유")
ORDER BY price DESC