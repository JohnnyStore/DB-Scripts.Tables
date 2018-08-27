DROP TABLE IF EXISTS `SystemLog`;
CREATE TABLE `SystemLog` (
    `LogID` INT NOT NULL AUTO_INCREMENT,
    `Priority` VARCHAR(10) NOT NULL,
    `ErrorTime` TIMESTAMP NOT NULL,
    `ErrorCode` CHAR(4) NOT NULL,
    `ErrorType` VARCHAR(10) NOT NULL,
    `ErrorOption` VARCHAR(10) NOT NULL,
    `ErrorMessage` VARCHAR(8000) NOT NULL,
    `ErrorDetail` TEXT NOT NULL,
    `Status` CHAR(1) NOT NULL,
    `InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
    `InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
    `LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
    `LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (`LogID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;