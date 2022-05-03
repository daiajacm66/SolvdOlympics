-- MySQL Script generated by MySQL Workbench
-- Tue May  3 10:45:09 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Event` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Event` (
  `idEvent` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `start` TIME NOT NULL,
  `finish` TIME NOT NULL,
  `num_participants` INT NOT NULL,
  `idcategory` INT NOT NULL,
  `datefinish` DATE NOT NULL,
  PRIMARY KEY (`idEvent`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Country` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Country` (
  `idCountry` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCountry`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`City`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`City` ;

CREATE TABLE IF NOT EXISTS `mydb`.`City` (
  `idCity` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `idcountry` INT NOT NULL,
  PRIMARY KEY (`idCity`),
  INDEX `idcountry_idx` (`idcountry` ASC) VISIBLE,
  CONSTRAINT `idcountry`
    FOREIGN KEY (`idcountry`)
    REFERENCES `mydb`.`Country` (`idCountry`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Federation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Federation` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Federation` (
  `idFederation` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `idcountry` INT NOT NULL,
  PRIMARY KEY (`idFederation`),
  INDEX `idcountry_idx` (`idcountry` ASC) VISIBLE,
  CONSTRAINT `idcountry`
    FOREIGN KEY (`idcountry`)
    REFERENCES `mydb`.`Country` (`idCountry`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Participant`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Participant` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Participant` (
  `idParticipant` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) NOT NULL,
  `gender` BINARY NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idParticipant`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Year`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Year` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Year` (
  `idyear` VARCHAR(10) NOT NULL,
  `year` INT NOT NULL,
  PRIMARY KEY (`idyear`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Medal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Medal` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Medal` (
  `idMedal` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  `position` INT NOT NULL,
  PRIMARY KEY (`idMedal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`participant_medal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`participant_medal` ;

CREATE TABLE IF NOT EXISTS `mydb`.`participant_medal` (
  `idparticipant_medal` INT NOT NULL,
  `idparticipant` INT NOT NULL,
  `idmedal` INT NOT NULL,
  PRIMARY KEY (`idparticipant_medal`),
  INDEX `idmedal_idx` (`idmedal` ASC) VISIBLE,
  INDEX `idparticipant_idx` (`idparticipant` ASC) VISIBLE,
  CONSTRAINT `idmedal`
    FOREIGN KEY (`idmedal`)
    REFERENCES `mydb`.`Medal` (`idMedal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idparticipant`
    FOREIGN KEY (`idparticipant`)
    REFERENCES `mydb`.`Participant` (`idParticipant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`country_year`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`country_year` ;

CREATE TABLE IF NOT EXISTS `mydb`.`country_year` (
  `idevent_country` INT NOT NULL,
  `idcountry` INT NOT NULL,
  `idyear` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`idevent_country`),
  INDEX `idcountry_idx` (`idcountry` ASC) VISIBLE,
  INDEX `idyear_idx` (`idyear` ASC) VISIBLE,
  CONSTRAINT `idcountry`
    FOREIGN KEY (`idcountry`)
    REFERENCES `mydb`.`Country` (`idCountry`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idyear`
    FOREIGN KEY (`idyear`)
    REFERENCES `mydb`.`Year` (`idyear`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TypeStadium`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`TypeStadium` ;

CREATE TABLE IF NOT EXISTS `mydb`.`TypeStadium` (
  `idTypeStadium` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `code` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`idTypeStadium`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Stadium`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Stadium` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Stadium` (
  `idStadium` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `idType` INT NOT NULL,
  `idcity` INT NOT NULL,
  PRIMARY KEY (`idStadium`),
  INDEX `idtype_idx` (`idType` ASC) VISIBLE,
  INDEX `idcity_idx` (`idcity` ASC) VISIBLE,
  CONSTRAINT `idtype`
    FOREIGN KEY (`idType`)
    REFERENCES `mydb`.`TypeStadium` (`idTypeStadium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcity`
    FOREIGN KEY (`idcity`)
    REFERENCES `mydb`.`City` (`idCity`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sport`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sport` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Sport` (
  `idSport` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idSport`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`participant_sport`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`participant_sport` ;

CREATE TABLE IF NOT EXISTS `mydb`.`participant_sport` (
  `idparticipant_sport` INT NOT NULL,
  `idparticipant` INT NOT NULL,
  `idsport` INT NOT NULL,
  PRIMARY KEY (`idparticipant_sport`),
  INDEX `idparticipant_idx` (`idparticipant` ASC) VISIBLE,
  INDEX `idsport_idx` (`idsport` ASC) VISIBLE,
  CONSTRAINT `idparticipant`
    FOREIGN KEY (`idparticipant`)
    REFERENCES `mydb`.`Participant` (`idParticipant`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idsport`
    FOREIGN KEY (`idsport`)
    REFERENCES `mydb`.`Sport` (`idSport`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Category` (
  `idCategory` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Sport_Category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Sport_Category` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Sport_Category` (
  `idSport_Category` INT NOT NULL,
  `idsport` INT NOT NULL,
  `idcategory` INT NOT NULL,
  PRIMARY KEY (`idSport_Category`),
  INDEX `idsport_idx` (`idsport` ASC) VISIBLE,
  INDEX `idcategory_idx` (`idcategory` ASC) VISIBLE,
  CONSTRAINT `idsport`
    FOREIGN KEY (`idsport`)
    REFERENCES `mydb`.`Sport` (`idSport`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcategory`
    FOREIGN KEY (`idcategory`)
    REFERENCES `mydb`.`Category` (`idCategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Program`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Program` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Program` (
  `idProgram` INT NOT NULL,
  `date` DATE NOT NULL,
  `start` DATETIME NOT NULL,
  `finish` DATETIME NOT NULL,
  `idstadium` INT NOT NULL,
  PRIMARY KEY (`idProgram`),
  INDEX `idstadium_idx` (`idstadium` ASC) VISIBLE,
  CONSTRAINT `idstadium`
    FOREIGN KEY (`idstadium`)
    REFERENCES `mydb`.`Stadium` (`idStadium`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Competition`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Competition` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Competition` (
  `idCompetition` INT NOT NULL,
  `timestart` TIME NOT NULL,
  PRIMARY KEY (`idCompetition`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Competition_Sport`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Competition_Sport` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Competition_Sport` (
  `idCompetition_Sport` INT NOT NULL,
  `idcompetition` INT NOT NULL,
  `idsport` INT NOT NULL,
  PRIMARY KEY (`idCompetition_Sport`),
  INDEX `idsport_idx` (`idsport` ASC) VISIBLE,
  INDEX `idcompetition_idx` (`idcompetition` ASC) VISIBLE,
  CONSTRAINT `idcompetition`
    FOREIGN KEY (`idcompetition`)
    REFERENCES `mydb`.`Competition` (`idCompetition`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idsport`
    FOREIGN KEY (`idsport`)
    REFERENCES `mydb`.`Sport` (`idSport`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Judge`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Judge` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Judge` (
  `idJudge` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idJudge`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Competition_Judge`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Competition_Judge` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Competition_Judge` (
  `idCompetition_Judge` INT NOT NULL,
  `idcompetition` INT NOT NULL,
  `idjudge` INT NOT NULL,
  PRIMARY KEY (`idCompetition_Judge`),
  INDEX `idjudge_idx` (`idjudge` ASC) VISIBLE,
  INDEX `idcompetition_idx` (`idcompetition` ASC) VISIBLE,
  CONSTRAINT `idjudge`
    FOREIGN KEY (`idjudge`)
    REFERENCES `mydb`.`Judge` (`idJudge`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcompetition`
    FOREIGN KEY (`idcompetition`)
    REFERENCES `mydb`.`Competition` (`idCompetition`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`event_competition`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`event_competition` ;

CREATE TABLE IF NOT EXISTS `mydb`.`event_competition` (
  `idevent_program` INT NOT NULL,
  `idevent` INT NOT NULL,
  `idcompetition` INT NOT NULL,
  PRIMARY KEY (`idevent_program`),
  INDEX `idevent_idx` (`idevent` ASC) VISIBLE,
  INDEX `idcompetition_idx` (`idcompetition` ASC) VISIBLE,
  CONSTRAINT `idevent`
    FOREIGN KEY (`idevent`)
    REFERENCES `mydb`.`Event` (`idEvent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idcompetition`
    FOREIGN KEY (`idcompetition`)
    REFERENCES `mydb`.`Competition` (`idCompetition`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`program_event`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`program_event` ;

CREATE TABLE IF NOT EXISTS `mydb`.`program_event` (
  `idprogram_event` INT NOT NULL,
  `idevent` INT NOT NULL,
  `idprogram` INT NOT NULL,
  PRIMARY KEY (`idprogram_event`),
  INDEX `idevent_idx` (`idevent` ASC) VISIBLE,
  INDEX `idprogram_idx` (`idprogram` ASC) VISIBLE,
  CONSTRAINT `idevent`
    FOREIGN KEY (`idevent`)
    REFERENCES `mydb`.`Event` (`idEvent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idprogram`
    FOREIGN KEY (`idprogram`)
    REFERENCES `mydb`.`Program` (`idProgram`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`table1` ;

CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;