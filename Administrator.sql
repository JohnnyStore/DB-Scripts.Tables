USE Luvpet_Prd;
DROP TABLE IF EXISTS `Administrator`;
CREATE TABLE `Administrator` (
	`AdministratorID` INT NOT NULL AUTO_INCREMENT,
	`AdministratorName` NVARCHAR(15) NULL ,
	`Account` VARCHAR(15) NOT NULL UNIQUE,
	`Password` VARCHAR(15) NOT NULL ,
	`Cellphone` VARCHAR(20) NOT NULL UNIQUE ,
	`Email` VARCHAR(50) NOT NULL UNIQUE ,
	`CustomerRole` CHAR(1) NULL ,
	`Status` CHAR(1) NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`AdministratorID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Administrator_Index_Account ON `Administrator`(`Account`);
CREATE INDEX Administrator_Index_Cellphone ON `Administrator`(`Cellphone`);
CREATE INDEX Administrator_Index_Email ON `Administrator`(`Email`);
