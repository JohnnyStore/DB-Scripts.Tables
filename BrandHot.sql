DROP TABLE IF EXISTS `BrandHot`;
CREATE TABLE `BrandHot` (
	`BrandHotID` INT NOT NULL AUTO_INCREMENT,
	`BrandID` INT NOT NULL ,
	`StartDate` DATETIME NOT NULL ,
	`EndDate` DATETIME NOT NULL ,
	`Status` CHAR(1) NOT NULL,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`BrandHotID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX BrandHot_Index_BrandID ON `BrandHot`(`BrandID`);
CREATE INDEX BrandHot_Index_Status ON `BrandHot`(`Status`);
