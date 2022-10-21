select i.incident_ID, v.Violation_Desc, lkp.CitationType_Desc, i.Incident_Date, i.Incident_Time from Incident i
INNER JOIN CitationType_LKP lkp on i.CitationType_ID = lkp.CitationType_ID
INNER JOIN IncidentViolation_XREF xref on i.Incident_ID = xref.Incident_ID
INNER JOIN Violation v on xref.Violation_ID =v.Violation_ID
