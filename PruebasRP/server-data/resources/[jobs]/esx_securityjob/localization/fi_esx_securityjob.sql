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
	('security',0,'recruit','Tulokas',20,'{}','{}'),
	('security',1,'officer','Konstaapeli',40,'{}','{}'),
	('security',2,'sergeant','Ylikonstaapeli',60,'{}','{}'),
	('security',3,'lieutenant','Kersantti',85,'{}','{}'),
	('security',4,'boss','Komentaja',100,'{}','{}')
;