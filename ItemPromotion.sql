DROP TABLE IF EXISTS `ItemPromotion`;
CREATE TABLE `ItemPromotion` (
	`ItemPromotionID` INT NOT NULL AUTO_INCREMENT,
	`ItemID` INT NOT NULL ,
	`StartDate` DATETIME NOT NULL ,
	`EndDate` DATETIME NOT NULL ,
  `PromotionPrice4RMB`DECIMAL(10,2) NOT NULL ,
	`PromotionPrice4USD`DECIMAL(10,2) NOT NULL ,
	`Status` CHAR(1) NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ItemPromotionID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX ItemPromotion_Index_ItemID ON `ItemPromotion`(`ItemID`);
CREATE INDEX ItemPromotion_Index_Status ON `ItemPromotion`(`Status`);
