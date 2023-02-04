drop table if exists CitationType_LKP;

create table CitationType_LKP (
     CitationType_ID UUID primary key DEFAULT gen_random_uuid(),
     CitationType_Desc varchar(50) not null
);
 
drop table if exists Incident;
 
create table Incident (
     Incident_ID UUID primary key DEFAULT gen_random_uuid() not null,
     Incident_Date date not null,
     Incident_Time char(4) not null,
     CitationType_ID UUID not null,
     foreign key (CitationType_ID) references CitationType_LKP(CitationType_ID)
);
 
drop table if exists Violation;
 
create table Violation (
     Violation_ID UUID primary key DEFAULT gen_random_uuid(),
     Violation_Desc varchar(50) not null
);
 
drop table if exists IncidentViolation_XREF;
 
create table IncidentViolation_XREF (
     XREF_ID UUID primary key DEFAULT gen_random_uuid(),
     Incident_ID UUID not null,
     Violation_ID UUID not null,
     foreign key (Incident_ID) references Incident(Incident_ID),
     foreign key (Violation_ID) references Violation(Violation_ID)
);

insert into Violation(Violation_Desc) values ('THEFT');
insert into Violation(Violation_Desc) values ('TRESPASS');
insert into Violation(Violation_Desc) values ('BURGLARY');
insert into Violation(Violation_Desc) values ('SPEEDING');
insert into Violation(Violation_Desc) values ('FAILURE TO OBEY TRAFFIC LAWS');
insert into Violation(Violation_Desc) values ('UNLAWFUL ACTIVITIES');
insert into Violation(Violation_Desc) values ('EXPIRED REGISTRATION');

insert into CitationType_LKP(CitationType_Desc) values ('Warning');
insert into CitationType_LKP(CitationType_Desc) values ('Citation');
insert into CitationType_LKP(CitationType_Desc) values ('Criminal Charge');

insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '2020-12-20 ', '1429 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/19/2019 ', '0351 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/12/2020 ', '1247 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/28/2020 ', '2208 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/09/2019 ', '0613 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/08/2020 ', '2154 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/30/2020 ', '1716 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/18/2019 ', '1811 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/13/2020 ', '1923 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/20/2019 ', '1431 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '04/08/2019 ', '0806 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '09/05/2021 ', '1938 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '09/05/2021 ', '2305 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/07/2022 ', '2226 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/25/2021 ', '0950 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/03/2020 ', '1024 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/31/2021 ', '0245 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/08/2020 ', '1005 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '04/14/2022 ', '2307 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/25/2019 ', '0239 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/31/2021 ', '1325 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/20/2019 ', '0951 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '01/02/2020 ', '1950 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/24/2020 ', '1928 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/09/2021 ', '1003 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/04/2020 ', '0121 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '05/20/2021 ', '2053 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/27/2019 ', '1028 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/05/2020 ', '1633 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/06/2022 ', '2003 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/28/2022 ', '0512 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/31/2021 ', '2219 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '04/17/2020 ', '1844 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/10/2021 ', '1321 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '09/12/2021 ', '1729 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/22/2020 ', '0349 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/07/2020 ', '1610 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/01/2019 ', '1203 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '02/11/2020 ', '1010 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '07/22/2020 ', '2142 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '02/26/2020 ', '2257 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '07/24/2019 ', '0844 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/13/2020 ', '1901 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '02/18/2021 ', '1409 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '09/11/2021 ', '0249 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '02/20/2020 ', '2028 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/12/2022 ', '1040 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/22/2021 ', '0051 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '01/02/2021 ', '0448 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/02/2019 ', '1827 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/17/2022 ', '0849 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/22/2020 ', '1029 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/30/2020 ', '0452 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/01/2021 ', '1921 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/28/2020 ', '0507 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '01/25/2021 ', '2023 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/02/2022 ', '0845 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/19/2020 ', '0331 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/22/2022 ', '1104 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '07/25/2019 ', '1823 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/02/2020 ', '1027 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '01/14/2022 ', '0909 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '12/11/2019 ', '0455 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '04/17/2019 ', '1635 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '01/18/2022 ', '1834 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/03/2019 ', '0303 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/24/2022 ', '2246 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '06/25/2021 ', '1255 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/17/2019 ', '0558 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/24/2021 ', '1543 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/17/2020 ', '1015 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '07/14/2020 ', '0030 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '03/18/2020 ', '1430 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Citation'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '07/16/2019 ', '0311 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '10/16/2021 ', '2026 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '08/26/2021 ', '1551 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Criminal Charge'));
insert into Incident(Incident_Date,Incident_Time,CitationType_ID)   values ( '11/24/2021 ', '1202 ', (select CitationType_ID from CitationType_LKP where CitationType_Desc = 'Warning'));

insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	1	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	2	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	3	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	4	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	5	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	6	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	7	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	8	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	9	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	10	,	7	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (11, 4);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	12	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	13	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	14	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (15, 3);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	16	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	17	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	18	,	7	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	19	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	20	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	21	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	22	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	23	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (24,7);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (25,6);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	26	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	27	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	28	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	29	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	30	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (31, 4);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	32	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	33	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	34	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	35	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	36	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	37	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	38	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (39,1);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	40	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	41	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (42,4);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (43,2);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (43,4);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	44	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	45	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	46	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	47	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	48	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	49	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	50	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	51	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	52	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	53	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	54	,	7	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	55	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (56,7);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	57	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	58	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	59	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	60	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	61	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	62	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	63	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	64	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	65	,	2	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	66	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	67	,	7	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	68	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	69	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	70	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	71	,	5	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	72	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	73	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	74	,	1	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	75	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (76,7);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	77	,	4	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	78	,	3	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	79	,	7	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	80	,	6	);
insert into IncidentViolation_XREF(Incident_ID, Violation_ID) output inserted.XREF_ID values (	81	,	6	);



