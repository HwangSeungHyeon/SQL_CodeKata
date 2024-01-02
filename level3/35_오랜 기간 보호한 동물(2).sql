--https://school.programmers.co.kr/learn/courses/30/lessons/59411
SELECT o.animal_id, o.name
FROM animal_outs as o
    LEFT OUTER JOIN animal_ins as i
    ON o.animal_id = i.animal_id
WHERE i.datetime IS NOT NULL
ORDER BY DATEDIFF(o.datetime, i.datetime) DESC
LIMIT 2