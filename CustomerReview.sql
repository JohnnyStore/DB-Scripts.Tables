DROP TABLE IF EXISTS `CustomerReview`;
CREATE TABLE `CustomerReview` (
	`ReviewID` INT NOT NULL AUTO_INCREMENT,
    `CustomerID` INT NOT NULL ,
	`ItemID` INT NOT NULL ,
    `ReviewLevel` CHAR(1) NOT NULL ,
	`StartCount` INT NOT NULL,
    `ReviewText` VARCHAR(500) NOT NULL ,
	`ReviewStatus` CHAR(1) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`ReviewID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX CustomerReview_Index_CustomerID ON `CustomerReview`(`CustomerID`);
CREATE INDEX CustomerReview_Index_ItemID ON `CustomerReview`(`ItemID`);