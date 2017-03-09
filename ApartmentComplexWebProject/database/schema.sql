CREATE TABLE unit
(
	unitNumber INTEGER PRIMARY KEY,
	floor INTEGER NOT NULL,
	floorPlan INTEGER NOT NULL
);

CREATE TABLE floorPlan
(
	planId INTEGER PRIMARY KEY,
	squareFeet INTEGER NOT NULL,
	bedrooms INTEGER NOT NULL,
	bathrooms INTEGER NOT NULL
);

CREATE SEQUENCE seq_leaseId;

CREATE TABLE lease
(
	leaseId INTEGER PRIMARY KEY DEFAULT NEXTVAL('seq_leaseId'),
	firstName VARCHAR() NOT NULL,
	lastName VARCHAR() NOT NULL,
	startDate DATE NOT NULL,
	endDate DATE NOT NULL
);

CREATE TABLE unit_lease
(
	unitNumber INTEGER NOT NULL,
	leaseId INTEGER NOT NULL,

	CONSTRAINT pk_unit_lease PRIMARY KEY (unitId, leaseId)
);

ALTER TABLE unit ADD CONSTRAINT fk_unit_floorPlan FOREIGN KEY (floorPlan) REFERENCES floorPlan (planId);
ALTER TABLE unit_lease ADD CONSTRAINT fk_unit_lease_unit FOREIGN KEY (unitNumber) REFERENCES unit (unitNumber);
ALTER TABLE unit_lease ADD CONSTRAINT fk_unit_lease_lease FOREIGN KEY (leaseId) REFERENCES lease (leaseId);