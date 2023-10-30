-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema videoclub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videoclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `videoclub` ;

-- -----------------------------------------------------
-- Table `videoclub`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`actors` (
  `Actor Id` BIGINT NULL DEFAULT NULL,
  `First Name` TEXT NULL DEFAULT NULL,
  `Last Name` TEXT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`category` (
  `Category Id` BIGINT NULL DEFAULT NULL,
  `Name` TEXT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`film` (
  `Film Id` BIGINT NULL DEFAULT NULL,
  `Title` TEXT NULL DEFAULT NULL,
  `Description` TEXT NULL DEFAULT NULL,
  `Release Year` BIGINT NULL DEFAULT NULL,
  `Language Id` BIGINT NULL DEFAULT NULL,
  `Rental Duration` BIGINT NULL DEFAULT NULL,
  `Rental Rate` DOUBLE NULL DEFAULT NULL,
  `Length` BIGINT NULL DEFAULT NULL,
  `Replacement Cost` DOUBLE NULL DEFAULT NULL,
  `Rating` TEXT NULL DEFAULT NULL,
  `Special Features` TEXT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`inventory` (
  `Inventory Id` BIGINT NULL DEFAULT NULL,
  `Film Id` BIGINT NULL DEFAULT NULL,
  `Store Id` BIGINT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`language` (
  `Language Id` BIGINT NULL DEFAULT NULL,
  `Name` TEXT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`old_hdd` (
  `First Name` TEXT NULL DEFAULT NULL,
  `Last Name` TEXT NULL DEFAULT NULL,
  `Title` TEXT NULL DEFAULT NULL,
  `Release Year` BIGINT NULL DEFAULT NULL,
  `Category Id` BIGINT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `videoclub`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `videoclub`.`rental` (
  `Rental Id` BIGINT NULL DEFAULT NULL,
  `Rental Date` TEXT NULL DEFAULT NULL,
  `Inventory Id` BIGINT NULL DEFAULT NULL,
  `Customer Id` BIGINT NULL DEFAULT NULL,
  `Return Date` TEXT NULL DEFAULT NULL,
  `Staff Id` BIGINT NULL DEFAULT NULL,
  `Last Update` TEXT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
