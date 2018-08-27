DROP TABLE IF EXISTS `ThirdPartyAPI`;
CREATE TABLE `ThirdPartyAPI` (
	`RequestID` INT NOT NULL AUTO_INCREMENT,
	`ThirdParty` VARCHAR(15) NOT NULL ,
	`RequestContent` VARCHAR(8000) NOT NULL ,
	`ResponseContent` VARCHAR(8000) NOT NULL ,
	`RequestResult` BIT NOT NULL ,
	`ResponseText` VARCHAR(100) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`RequestID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;