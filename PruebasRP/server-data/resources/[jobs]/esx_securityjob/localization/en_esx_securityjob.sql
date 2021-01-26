USE `PH2_OQOcJDxAg0Jt3jF`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_security', 'security', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_security', 'security', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_security', 'security', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('security', 'security')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('security',0,'recruit','Recruit',20,'{}','{}'),
	('security',1,'officer','Officier',40,'{}','{}'),
	('security',2,'sergeant','Sergeant',60,'{}','{}'),
	('security',3,'lieutenant','Lieutenant',85,'{}','{}'),
	('security',4,'boss','Chief',100,'{}','{}')
;