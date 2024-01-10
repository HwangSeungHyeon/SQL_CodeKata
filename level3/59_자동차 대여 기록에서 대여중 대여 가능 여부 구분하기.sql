--https://school.programmers.co.kr/learn/courses/30/lessons/157340
-- 코드를 입력하세요
SELECT
    car_id,
    CASE
        WHEN car_id IN (SELECT car_id
                       FROM car_rental_company_rental_history
                       WHERE start_date <= '2022-10-16' AND end_date >= '2022-10-16') THEN "대여중"
        ELSE "대여 가능"
    END availability
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY car_id DESC