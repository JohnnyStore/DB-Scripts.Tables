DROP TABLE IF EXISTS `Collection`;
CREATE TABLE `Collection` (
	`CollectionID` INT NOT NULL AUTO_INCREMENT,
	`ItemID` INT NOT NULL ,
    `CustomerID` INT NOT NULL ,
	`Status` CHAR(1) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`CollectionID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX Collection_Index_ItemID ON `Collection`(`ItemID`);
CREATE INDEX Collection_Index_CustomerID ON `Collection`(`CustomerID`);