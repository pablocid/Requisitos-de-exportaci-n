SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `mydb`.`condicion` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `condicion` VARCHAR(50) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`especie` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `especie` VARCHAR(75) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`pais` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`condicionIngreso` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `condicionIngreso` VARCHAR(75) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`nivelMuestreo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nivelMuestreo` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`tratamiento` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tratamiento` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`cuarentenaVegetal` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cuarentenaVegetal` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`plagasCuarentenarias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `plastasCuarentenarias` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`requisitosAdicionales` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `requisitosAdicionales` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`protocolos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `protocolos` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`declaracionesAdicionales` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `declaracionesAdicionales` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`nivelMuestreoObs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nivelMuestreoObs` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`condicionIngresoObs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `condicionIngresoObs` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`cuarentenaVegetalObs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `cuarentenaVegetalObs` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`tratamientoObs` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `tratamientoObs` TEXT NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`requisitosInfo` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  `fecha_modificacion` DATETIME NULL DEFAULT NULL,
  `condion_id` INT(11) NULL DEFAULT NULL,
  `especie_id` INT(11) NULL DEFAULT NULL COMMENT '      ',
  `nivelMuestreo_id` INT(11) NULL DEFAULT NULL,
  `pais_id` INT(11) NULL DEFAULT NULL,
  `condicionIngreso_id` INT(11) NULL DEFAULT NULL,
  `tratamiento_id` INT(11) NULL DEFAULT NULL,
  `cuarentenaVegetal_id` INT(11) NULL DEFAULT NULL,
  `plagasCuarentenarias_id` INT(11) NULL DEFAULT NULL,
  `requisitosAdicionales_id` INT(11) NULL DEFAULT NULL,
  `protocolos_id` INT(11) NULL DEFAULT NULL,
  `declaracionesAdicionales_id` INT(11) NULL DEFAULT NULL,
  `condicionIngresoObs_id` INT(11) NULL DEFAULT NULL,
  `tratamientoObs_id` INT(11) NULL DEFAULT NULL,
  `nivelMuestreoObs_id` INT(11) NULL DEFAULT NULL,
  `cuarentenaVegetalObs_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `hola_idx` (`condion_id` ASC),
  INDEX `especie_idx` (`especie_id` ASC),
  INDEX `nivelMuestreo_idx` (`nivelMuestreo_id` ASC),
  INDEX `pais_idx` (`pais_id` ASC),
  INDEX `condicionIngreso_idx` (`condicionIngreso_id` ASC),
  INDEX `tratamiento_idx` (`tratamiento_id` ASC),
  INDEX `cuarentenaVegetal_idx` (`cuarentenaVegetal_id` ASC),
  INDEX `plagasCuarentenarias_idx` (`plagasCuarentenarias_id` ASC),
  INDEX `protocolos_idx` (`protocolos_id` ASC),
  INDEX `declaracionesAdicionales_idx` (`declaracionesAdicionales_id` ASC),
  INDEX `condicionIngresoObs_idx` (`condicionIngresoObs_id` ASC),
  INDEX `tratamientoObs_idx` (`tratamientoObs_id` ASC),
  INDEX `cuarentenaVegetalObs_idx` (`cuarentenaVegetalObs_id` ASC),
  INDEX `nivelMuestreoObs_idx` (`nivelMuestreoObs_id` ASC),
  INDEX `requisitosAdicionales_idx` (`requisitosAdicionales_id` ASC),
  CONSTRAINT `condicion`
    FOREIGN KEY (`condion_id`)
    REFERENCES `mydb`.`condicion` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `especie`
    FOREIGN KEY (`especie_id`)
    REFERENCES `mydb`.`especie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `nivelMuestreo`
    FOREIGN KEY (`nivelMuestreo_id`)
    REFERENCES `mydb`.`nivelMuestreo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `pais`
    FOREIGN KEY (`pais_id`)
    REFERENCES `mydb`.`pais` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `condicionIngreso`
    FOREIGN KEY (`condicionIngreso_id`)
    REFERENCES `mydb`.`condicionIngreso` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tratamiento`
    FOREIGN KEY (`tratamiento_id`)
    REFERENCES `mydb`.`tratamiento` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cuarentenaVegetal`
    FOREIGN KEY (`cuarentenaVegetal_id`)
    REFERENCES `mydb`.`cuarentenaVegetal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `plagasCuarentenarias`
    FOREIGN KEY (`plagasCuarentenarias_id`)
    REFERENCES `mydb`.`plagasCuarentenarias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `requisitosAdicionales`
    FOREIGN KEY (`requisitosAdicionales_id`)
    REFERENCES `mydb`.`requisitosAdicionales` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `protocolos`
    FOREIGN KEY (`protocolos_id`)
    REFERENCES `mydb`.`protocolos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `declaracionesAdicionales`
    FOREIGN KEY (`declaracionesAdicionales_id`)
    REFERENCES `mydb`.`declaracionesAdicionales` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `condicionIngresoObs`
    FOREIGN KEY (`condicionIngresoObs_id`)
    REFERENCES `mydb`.`condicionIngresoObs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tratamientoObs`
    FOREIGN KEY (`tratamientoObs_id`)
    REFERENCES `mydb`.`tratamientoObs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `cuarentenaVegetalObs`
    FOREIGN KEY (`cuarentenaVegetalObs_id`)
    REFERENCES `mydb`.`cuarentenaVegetalObs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `nivelMuestreoObs`
    FOREIGN KEY (`nivelMuestreoObs_id`)
    REFERENCES `mydb`.`nivelMuestreoObs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `phone` INT(11) NULL DEFAULT NULL,
  `admin` INT(11) NOT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`pack-especie` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NULL DEFAULT NULL,
  `pack_id` INT(11) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `especie_idx` (`pack_id` ASC),
  CONSTRAINT `pack`
    FOREIGN KEY (`pack_id`)
    REFERENCES `mydb`.`pack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `especie`
    FOREIGN KEY (`pack_id`)
    REFERENCES `mydb`.`especie` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`pack` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `pack` VARCHAR(50) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `mydb`.`user-pack` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NULL DEFAULT NULL,
  `pack_id` INT(11) NULL DEFAULT NULL,
  `fecha_creacion` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_idx` (`user_id` ASC),
  INDEX `pack_idx` (`pack_id` ASC),
  CONSTRAINT `user`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `pack`
    FOREIGN KEY (`pack_id`)
    REFERENCES `mydb`.`pack` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
