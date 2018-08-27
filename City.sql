DROP TABLE IF EXISTS `City`;
CREATE TABLE `City` (
	`CityID` INT NOT NULL AUTO_INCREMENT,
	`CountryID` INT NOT NULL ,
	`ProvinceID` INT NOT NULL ,
	`CityNameCN` NVARCHAR(15) NOT NULL ,
	`CityNameEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`CityID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX City_Index_CountryID ON `City`(`CountryID`);
CREATE INDEX City_Index_ProvinceID ON `City`(`ProvinceID`);
