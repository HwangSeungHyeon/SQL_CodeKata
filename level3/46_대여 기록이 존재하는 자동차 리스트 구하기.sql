--https://school.programmers.co.kr/learn/courses/30/lessons/157341
SELECT DISTINCT c.car_id
FROM car_rental_company_car c
    LEFT OUTER JOIN car_rental_company_rental_history h
    ON c.car_id = h.car_id
WHERE car_type = "세단"
AND DATE_FORMAT(start_date, "%m") = 10
ORDER BY c.car_id DESC