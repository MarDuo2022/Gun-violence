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
	PRIMARY KEY (Incident_ID),
	FOREIGN KEY (Incident_ID) REFERENCES mass_shooting_master (Incident_ID)
);



    