DROP TABLE IF EXISTS `MaterialMapping`;
CREATE TABLE `MaterialMapping` (
	`MaterialID` INT NOT NULL AUTO_INCREMENT,
	`MaterialCN` NVARCHAR(15) NOT NULL ,
	`MaterialEN` VARCHAR(25) NOT NULL ,
	`InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
	`LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
	`LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
	PRIMARY KEY (`MaterialID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;
