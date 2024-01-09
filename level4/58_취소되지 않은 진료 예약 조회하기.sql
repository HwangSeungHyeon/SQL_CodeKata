--https://school.programmers.co.kr/learn/courses/30/lessons/132204
SELECT
    apnt_no,
    pt_name,
    a.pt_no,
    a.mcdp_cd,
    dr_name,
    apnt_ymd 
FROM patient p
    INNER JOIN appointment a
    ON p.pt_no = a.pt_no
    INNER JOIN doctor d
    ON a.mddr_id = d.dr_id
WHERE DATE_FORMAT(apnt_ymd, "%Y-%m-%d") = "2022-04-13"
AND apnt_cncl_yn = "N"
ORDER BY apnt_ymd