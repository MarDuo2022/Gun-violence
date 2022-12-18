/*
--AP: Below codes are comment 

--Author MD 15/Dec/2022

CREATE TABLE mass_shooting_master (
	Incident_ID int NOT NULL,
	Incident_Date date NOT NULL,
	State varchar NOT NULL,
	City_county varchar NOT NULL,
	Address varchar,
	Killed int,
	Injured int,
	PRIMARY KEY (Incident_ID)
);


CREATE TABLE children_casualty (
	Incident_ID int NOT NULL,
	Incident_Date date NOT NULL,
	State varchar NOT NULL,
	City_county varchar NOT NULL,
	Address varchar,
	Killed int,
	Injured int,
	Record_type varchar NOT NULL,
	PRIMARY KEY (Incident_ID),
	FOREIGN KEY (Incident_ID) REFERENCES mass_shooting_master (Incident_ID)
);

CREATE TABLE teen_casualty (
	Incident_ID int NOT NULL,
	Incident_Date date NOT NULL,
	State varchar NOT NULL,
	City_county varchar NOT NULL,
	Address varchar,
	Killed int,
	Injured int,
	Record_type varchar NOT NULL,
	PRIMARY KEY (Incident_ID),
	FOREIGN KEY (Incident_ID) REFERENCES mass_shooting_master (Incident_ID)
);
*/

/*
Table dropping sequence 
--Dropping dependent
1. DROP TABLE children_casualty;
2. DROP TABLE teen_casualty;

--Dropping Master
3. DROP TABLE mass_shooting_master;
*/


/*Modification History:
********************************************************************************************************
Change           Date                 Dev                           Comment      
Initial Verson   15Dec2022            Marisa                        Author of all scripts.
Mod-1            18Dec2022            Anshu                         1. Name of the column City_county changed to City_County. It should be case sensitive but this slilly
																	--is causing issue indentifying the column from Jupyter. For the very same reason I have used quotes to create columns.
																	--2. I have removed the column Record_type. As analyzed and suggested by Marisa we don't need this column.
																	--3. Foreign keys are removed as all incident_id's from children_casualty and teen_casualty don't have a reference to mass_shooting_master.
********************************************************************************************************           



*/


--Author MD 15/Dec/2022
CREATE TABLE mass_shooting_master (
	"Incident_ID" int NOT NULL,
	"Incident_Date" date NOT NULL,
	"State" varchar NOT NULL,
	"City_County" varchar NOT NULL,
	"Address" varchar,
	"Killed" int,
	"Injured" int,
	PRIMARY KEY ("Incident_ID")
);


--Author MD 15/Dec/2022
CREATE TABLE children_casualty (
	"Incident_ID" int NOT NULL,
	"Incident_Date" date NOT NULL,
	"State" varchar NOT NULL,
	"City_County" varchar NOT NULL,
	"Address" varchar,
	"Killed" int,
	"Injured" int,
	--Record_type varchar NOT NULL, -Mod-1
	PRIMARY KEY ("Incident_ID") 
	--FOREIGN KEY ("Incident_ID") REFERENCES mass_shooting_master ("Incident_ID") -Mod-1
);

--Author MD 15/Dec/2022
CREATE TABLE teen_casualty (
	"Incident_ID" int NOT NULL,
	"Incident_Date" date NOT NULL,
	"State" varchar NOT NULL,
	"City_County" varchar NOT NULL,
	"Address" varchar,
	"Killed" int,
	"Injured" int,
	--PRIMARY KEY ("Incident_ID") -Mod-1
	PRIMARY KEY ("Incident_ID")
	--FOREIGN KEY ("Incident_ID") REFERENCES mass_shooting_master ("Incident_ID")-Mod-1
);



    