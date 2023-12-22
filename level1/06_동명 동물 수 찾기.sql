-- https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 동물 보호소에 들어온 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요.
-- 이때 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.

SELECT NAME, COUNT(*) AS COUNT --NAME과 COUNT 컬럼 출력
FROM ANIMAL_INS --가져올 테이블 이름
WHERE NAME IS NOT NULL --이름이 NULL이 아닌 것만 출력
GROUP BY NAME --이름별로 그룹화
HAVING COUNT >= 2 --count가 2이상
ORDER BY NAME --결과 이름순 조회