CREATE TABLE users (
	
	id 		INT(5) AUTO_INCREMENT PRIMARY KEY,
	name 	VARCHAR(64),
	surname VARCHAR(32),
	age 	TINYINT(3),
	email 	VARCHAR(64),
	status 	VARCHAR(128)
) 

DEFAULT CHARACTER SET UTF8;