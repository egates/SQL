drop table if exists Citation_LKP;
go
create table CitationType_LKP (
     CitationType_ID int primary key identity,
     CitationType_Desc varchar(50) not null
);
go;
drop table if exists Incident;
go;
create table Incident (
     Incident_ID int primary key identity not null,
     Incident_Date date not null,
     Incident_Time char(4) not null,
     CitationType_ID int not null,
     foreign key (CitationType_ID) references CitationType_LKP(CitationType_ID)
);
go;
drop table if exists Violation;
go;
create table Violation (
     Violation_ID int primary key identity,
     Violation_Desc varchar(50) not null
);
go;
drop table if exists IncidentViolation_XREF;
go;
create table IncidentViolation_XREF (
     XREF_ID int primary key identity,
     Incident_ID int not null,
     Violation_ID int not null,
     foreign key (Incident_ID) references Incident(Incident_ID),
     foreign key (Violation_ID) references Violation(Violation_ID)
);

insert into Violation(Violation_Desc) output inserted.Violation_ID values ("THEFT");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("TRESPASS");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("BURGLARY");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("SPEEDING");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("FAILURE TO OBEY TRAFFIC LAWS");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("UNLAWFUL ACTIVITIES");
insert into Violation(Violation_Desc) output inserted.Violation_ID values ("EXPIRED REGISTRATION");

go;

insert into CitationType_LKP(CitationType_Desc) output inserted.CitationType_ID values ("Warning");
insert into CitationType_LKP(CitationType_Desc) output inserted.CitationType_ID values ("Citation");
insert into CitationType_LKP(CitationType_Desc) output inserted.CitationType_ID values ("Criminal Charge");

declare @warning as varchar(50)
declare @citation as varchar(50)
declare @crime as varchar(50)
set @warning = (select CitationType_ID from Citation_LKP where CitationType_Desc = "Warning");
set @citation = (select CitationType_ID from Citation_LKP where CitationType_Desc = "Citation");
set @crime = (select CitationType_ID from Citation_LKP where CitationType_Desc = "Criminal Charge");

insert into Incident(Incident_Date,Incident_Time,CitationType_ID) output inserted.Incident_ID values (2020-12-20,1429,@warning);

insert into IncidentViolation_XREF(Incident_ID,Violation_ID) output inserted.XREF_ID values (31,@speed);


insert into Violation(Violation_Desc) output inserted.Violation_ID values ("Criminal Charge");
