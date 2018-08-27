DROP TABLE IF EXISTS `CompanyInfo`;
CREATE TABLE `CompanyInfo` (
	`InfoID` INT NOT NULL AUTO_INCREMENT,
	`Introduction` TEXT NOT NULL ,
	`Contact` TEXT NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`InfoID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;