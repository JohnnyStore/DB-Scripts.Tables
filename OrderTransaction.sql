DROP TABLE IF EXISTS `OrderTransaction`;
CREATE TABLE `OrderTransaction` (
	`OrderTransactionID` INT NOT NULL AUTO_INCREMENT,
	`OrderID` INT NOT NULL ,
	`ItemID` INT NOT NULL ,
	`ItemCount` INT NOT NULL ,
	`ItemAmount` DECIMAL(8,2) NOT NULL ,
	`CurrencyType` CHAR(3) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`OrderTransactionID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
CREATE INDEX OrderTransaction_Index_OrderID ON `OrderTransaction`(`OrderID`);
CREATE INDEX OrderTransaction_Index_ItemID ON `OrderTransaction`(`ItemID`);
