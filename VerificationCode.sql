DROP TABLE IF EXISTS `VerificationCode`;
CREATE TABLE `VerificationCode` (
    `VerificationCodeID` INT NOT NULL AUTO_INCREMENT,
    `Cellphone` VARCHAR(11) NULL,
    `Email` VARCHAR(50) NULL,
    `VerificationCode` CHAR(6) NOT NULL,
    `SendTime` TIMESTAMP NOT NULL,
    `InUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
    `InDate` TIMESTAMP NOT NULL DEFAULT current_timestamp,
    `LastEditUser` VARCHAR(15) NOT NULL DEFAULT 'sys',
    `LastEditDate` TIMESTAMP NOT NULL DEFAULT current_timestamp ON UPDATE current_timestamp,
    PRIMARY KEY (`VerificationCodeID`)
) ENGINE = INNODB DEFAULT CHAR SET = UTF8;