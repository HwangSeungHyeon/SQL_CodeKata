--https://school.programmers.co.kr/learn/courses/30/lessons/131120
SELECT
    member_id,
    member_name,
    gender,
    DATE_FORMAT(date_of_birth,"%Y-%m-%d") as date_of_birth
FROM member_profile
WHERE DATE_FORMAT(DATE_OF_BIRTH, "%m") = "03"
AND tlno IS NOT NULL
AND gender = "w"
ORDER BY member_id