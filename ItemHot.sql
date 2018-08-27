DROP TABLE IF EXISTS `ItemHot`;
CREATE TABLE `ItemHot` (
	`ItemHotID` INT NOT NULL AUTO_INCREMENT,
	`ItemID` INT NOT NULL ,
	`StartDate` DATETIME NOT NULL ,
	`EndDate` DATETIME NOT NULL ,
	`Status` CHAR(1) NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ItemHotID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX ItemHot_Index_ItemID ON `ItemHot`(`ItemID`);
CREATE INDEX ItemHot_Index_Status ON `ItemHot`(`Status`);
