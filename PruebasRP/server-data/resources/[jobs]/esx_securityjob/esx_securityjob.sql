INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_security', 'Sécurité', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_security', 'Sécurité', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_security', 'Sécurité', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('security','Sécurité')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('security',0,'recruit','Apprentis',20,'{}','{}'),
	('security',1,'officer','Sécirité',40,'{}','{}'),
	('security',2,'sergeant','Videur',60,'{}','{}'),
	('security',3,'lieutenant','Garde du corps',85,'{}','{}'),
	('security',4,'boss','Patron',100,'{}','{}')
;