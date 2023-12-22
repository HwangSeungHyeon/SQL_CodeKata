--https://school.programmers.co.kr/learn/courses/30/lessons/59036
--동물 보호소에 들어온 동물 중 아픈 동물1의 아이디와 이름을 조회하는 SQL 문을 작성해주세요.
--이때 결과는 아이디 순으로 조회해주세요.

SELECT ANIMAL_ID, NAME --출력할 컬럼
FROM ANIMAL_INS -- 가져올 테이블
WHERE INTAKE_CONDITION="Sick" --상태가 Sick인 데이터만 출력
ORDER BY ANIMAL_ID --아이디 순으로 정렬