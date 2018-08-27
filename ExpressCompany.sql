DROP TABLE IF EXISTS `ExpressCompany`;
CREATE TABLE `ExpressCompany` (
	`CompanyID` INT NOT NULL AUTO_INCREMENT,
	`CompanyCN` NVARCHAR(15) NOT NULL ,
	`CompanyEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`CompanyID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
