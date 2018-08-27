DROP TABLE IF EXISTS `Province`;
CREATE TABLE `Province` (
	`ProvinceID` INT NOT NULL AUTO_INCREMENT,
	`CountryID` INT NOT NULL ,
	`ProvinceNameCN` NVARCHAR(15) NOT NULL ,
	`ProvinceNameEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ProvinceID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Province_Index_CountryID ON `Province`(`CountryID`);
