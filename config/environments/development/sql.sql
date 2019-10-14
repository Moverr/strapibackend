 

CREATE TABLE `socialmedialinks1` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`socialmediaUrl`	varchar(255),
	`author`	INT,
	`socialmediasite`	INT,
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
)
COMMENT='ddd'
COLLATE='latin1_swedish_ci'
;

 
CREATE TABLE IF NOT EXISTS `socialmedialinks` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`socialmediaUrl`	varchar(255),
	`author`	INT,
	`socialmediasite`	INT,
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
	
);

COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `socialmediasites` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`sitename`	varchar(255),
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
	
	
);
COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `newsposts` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`title`	varchar(255) NOT NULL,
	`description`	longtext,
	`newscategory`	INT,
	`tags`	varchar(255),
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
	
);
COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `authors` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`name`	varchar(255),
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
	
	
);


COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `newscategories` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`category`	varchar(255),
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
	
	
);


COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `authors_newsposts__newsposts_authors` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`newspost_id`	int,
	`author_id`	INT,
	PRIMARY KEY (`id`)
	
	
);

COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `upload_file_morph` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`upload_file_id`	int,
	`related_id`	int,
	`related_type`	longtext,
	`field`	LONGTEXT,
	PRIMARY KEY (`id`)
	
);

COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `users-permissions_user` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`username`	varchar(255) NOT NULL,
	`email`	varchar(255) NOT NULL,
	`provider`	varchar(255),
	`password`	varchar(255),
	`resetPasswordToken`	varchar(255),
	`confirmed`	boolean,
	`blocked`	boolean,
	`role`	INT,
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
		PRIMARY KEY (`id`)

);


COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `users-permissions_role` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`name`	varchar(255) NOT NULL,
	`description`	varchar(255),
	`type`	varchar(255),
			PRIMARY KEY (`id`)

);

COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `users-permissions_permission` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`type`	varchar(255) NOT NULL,
	`controller`	varchar(255) NOT NULL,
	`action`	varchar(255) NOT NULL,
	`enabled`	boolean NOT NULL,
	`policy`	varchar(255),
	`role`	INT,
				PRIMARY KEY (`id`)

);


COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `upload_file` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`name`	varchar(255) NOT NULL,
	`hash`	varchar(255) NOT NULL,
	`sha256`	varchar(255),
	`ext`	varchar(255),
	`mime`	varchar(255) NOT NULL,
	`size`	varchar(255) NOT NULL,
	`url`	varchar(255) NOT NULL,
	`provider`	varchar(255) NOT NULL,
	`public_id`	varchar(255),
	`created_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
	`updated_at`	timestamp DEFAULT CURRENT_TIMESTAMP,
					PRIMARY KEY (`id`)

);

COMMENT='ddd'
COLLATE='latin1_swedish_ci'


CREATE TABLE IF NOT EXISTS `strapi_administrator` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`username`	varchar(255) NOT NULL,
	`email`	varchar(255) NOT NULL,
	`password`	varchar(255) NOT NULL,
	`resetPasswordToken`	varchar(255),
	`blocked`	BOOLEAN,
					PRIMARY KEY (`id`)
	
);
COMMENT='ddd'
COLLATE='latin1_swedish_ci'

CREATE TABLE IF NOT EXISTS `core_store` (
	`id`	INT NOT NULL  AUTOINCREMENT,
	`key`	varchar(255),
	`value`	longtext,
	`type`	varchar(255),
	`environment`	varchar(255),
	`tag`	varchar(255),
						PRIMARY KEY (`id`)

);
 
COMMENT='ddd'
COLLATE='latin1_swedish_ci'
 

  