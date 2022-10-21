SELECT DISTINCT
    subq.Violation_Desc,
    subq.Incident_Month,
    subq.Incident_Year,
    subq.WorkShift
 FROM (
    SELECT 
        v.Violation_Desc,
        MONTH(i.Incident_Date) as Incident_Month,
        YEAR(i.Incident_Date) as Incident_Year,
    CASE
        WHEN LEFT(i.Incident_Time,2) IN ('07','08','09','10','11','12','13','14')
            THEN 'Day'
        WHEN LEFT(i.Incident_Time,2) IN ('15','16','17','18','19','20','21','22')
            THEN 'Evening'
        WHEN LEFT(i.Incident_Time,2) IN ('23','00','01','02','03','04','05','06')
            THEN 'NIGHT'
    END AS Workshift,
    ROW_NUMBER() OVER(
            PARTITION BY v.violation_ID
            ORDER BY i.Incident_Date DESC 
    ) AS NUM 
    FROM dbo.Incident i 
        JOIN dbo.IncidentViolation_XREF x ON i.Incident_ID = x.Incident_ID
        JOIN dbo.Violation v ON x.Violation_ID = v.Violation_ID
        JOIN dbo.CitationType_LKP c
            ON i.CitationType_ID = c.CitationType_ID 
                AND c.CitationType_ID =2
) subq
WHERE subq.NUM = 1
ORDER BY Violation_Desc



