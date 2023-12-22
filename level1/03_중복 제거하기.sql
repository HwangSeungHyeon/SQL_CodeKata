-- https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요. 이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

-- COUNT() : 괄호 안에 있는 컬럼 개수 세줌
-- DISTINCT 컬럼명 : 컬럼명에 있는 중복 없애줌
-- 컬럼명1 AS 컬럼명2 : 컬럼명 다르게 출력해줌
-- IS NOT NULL : NULL 아닌 애만 가져옴
SELECT COUNT(DISTINCT NAME) AS COUNT FROM ANIMAL_INS WHERE NAME IS NOT NULL