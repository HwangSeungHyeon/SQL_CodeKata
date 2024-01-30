--https://school.programmers.co.kr/learn/courses/30/lessons/151138
SELECT
    history_id,
    car_id,
    DATE_FORMAT(start_date, "%Y-%m-%d") as start_date,
    DATE_FORMAT(end_date, "%Y-%m-%d") as end_date,
    CASE
        WHEN DATEDIFF(end_date, start_date) >= 29 THEN "장기 대여"
        ELSE "단기 대여"
        END
    AS rent_type
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE start_date LIKE "2022-09%"
ORDER BY history_id DESC