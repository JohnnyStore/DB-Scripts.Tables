DROP TABLE IF EXISTS `DaliySnapUp`;
CREATE TABLE `DailySnapUp` (
	`SnapUpID` INT NOT NULL AUTO_INCREMENT,
	`ItemID` INT NOT NULL ,
	`SnapUpDate` DATETIME NOT NULL ,
	`SnapUpPrice4RMB`DECIMAL(10,2) NOT NULL ,
	`SnapUpPrice4USD`DECIMAL(10,2) NOT NULL ,
	`Status` CHAR(1) NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`SnapUpID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX DailySnapUp_Index_ItemID ON `DailySnapUp`(`ItemID`);
CREATE INDEX DailySnapUp_Index_Status ON `DailySnapUp`(`Status`);
