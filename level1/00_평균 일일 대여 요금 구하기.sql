-- https://school.programmers.co.kr/learn/courses/30/lessons/151136

/*CAR_RENTAL_COMPANY_CAR 테이블에서 자동차 종류가 'SUV'인 자동차들의 평균 일일 대여 요금을 출력하는 SQL문을 작성해주세요. 이때 평균 일일 대여 요금은 소수 첫 번째 자리에서 반올림하고, 컬럼명은 AVERAGE_FEE 로 지정해주세요.
*/

-- ROUND 함수로 반올림 가능
-- AVG 함수로 평균 구하기 가능
-- as로 컬럼명 임의로 지정 가능
-- WHERE로 조건 지정 가능
SELECT ROUND(AVG(daily_fee),0) as AVERAGE_FEE FROM CAR_RENTAL_COMPANY_CAR WHERE car_type="SUV"