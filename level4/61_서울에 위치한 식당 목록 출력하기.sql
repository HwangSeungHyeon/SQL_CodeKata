--https://school.programmers.co.kr/learn/courses/30/lessons/131118
SELECT
    i.rest_id,
    rest_name,
    food_type,
    favorites,
    address,
    ROUND(AVG(review_score), 2) score
FROM rest_info i
    INNER JOIN rest_review r
    ON i.rest_id = r.rest_id
WHERE address LIKE "서울%"
GROUP BY i.rest_id
ORDER BY score DESC, favorites DESC