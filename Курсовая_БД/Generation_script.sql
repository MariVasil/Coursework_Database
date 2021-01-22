-- MySQL Workbench Synchronization
-- Generated: 2021-01-20 00:17
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: vasil

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `billing_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;

CREATE TABLE IF NOT EXISTS `billing_system`.`internal_transfers` (
  `id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `amount` DECIMAL(18,4) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `from_account` BIGINT(19) UNSIGNED NOT NULL,
  `to_account` BIGINT(19) UNSIGNED NOT NULL,
  `status` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `number_UNIQUE` (`number` ASC) VISIBLE,
  INDEX `fk_internal_transactions_accounts1_idx` (`from_account` ASC) VISIBLE,
  INDEX `fk_internal_transactions_accounts2_idx` (`to_account` ASC) VISIBLE,
  INDEX `fk_internal_transactions_transaction_statuses1_idx` (`status` ASC) VISIBLE,
  INDEX `created_at` (`created_at` ASC) VISIBLE,
  CONSTRAINT `fk_internal_transactions_accounts1`
    FOREIGN KEY (`from_account`)
    REFERENCES `billing_system`.`accounts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_internal_transactions_accounts2`
    FOREIGN KEY (`to_account`)
    REFERENCES `billing_system`.`accounts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_internal_transactions_transaction_statuses1`
    FOREIGN KEY (`status`)
    REFERENCES `billing_system`.`transaction_statuses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`transaction_statuses` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_code` INT(10) UNSIGNED NOT NULL,
  `status_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `status_code_UNIQUE` (`status_code` ASC) VISIBLE,
  UNIQUE INDEX `status_name_UNIQUE` (`status_name` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`currencies` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `currency_code` VARCHAR(3) NOT NULL,
  `currency_name` VARCHAR(145) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `currency_code_UNIQUE` (`currency_code` ASC) VISIBLE,
  UNIQUE INDEX `currency_name_UNIQUE` (`currency_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`countries` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` VARCHAR(3) NOT NULL,
  `country_name` VARCHAR(145) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `country_code_UNIQUE` (`country_code` ASC) VISIBLE,
  UNIQUE INDEX `country_name_UNIQUE` (`country_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`users` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(145) NOT NULL,
  `lastname` VARCHAR(145) NOT NULL,
  `email` VARCHAR(145) NOT NULL,
  `phone` BIGINT(12) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `phone_UNIQUE` (`phone` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`input_transactions` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `to_account` BIGINT(19) UNSIGNED NOT NULL,
  `amount` DECIMAL(18,4) NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `status` INT(10) UNSIGNED NOT NULL,
  `method` INT(10) UNSIGNED NOT NULL,
  `details` JSON NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `number_UNIQUE` (`number` ASC) VISIBLE,
  INDEX `fk_input_transactions_accounts1_idx` (`to_account` ASC) VISIBLE,
  INDEX `fk_input_transactions_transaction_statuses1_idx` (`status` ASC) VISIBLE,
  INDEX `fk_input_transactions_input_methods1_idx` (`method` ASC) VISIBLE,
  INDEX `created_at` (`created_at` ASC) VISIBLE,
  CONSTRAINT `fk_input_transactions_accounts1`
    FOREIGN KEY (`to_account`)
    REFERENCES `billing_system`.`accounts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_input_transactions_transaction_statuses1`
    FOREIGN KEY (`status`)
    REFERENCES `billing_system`.`transaction_statuses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_input_transactions_input_methods1`
    FOREIGN KEY (`method`)
    REFERENCES `billing_system`.`input_methods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`accounts` (
  `id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `numder` VARCHAR(45) NOT NULL,
  `users_id` INT(10) UNSIGNED NOT NULL,
  `countries_id` INT(10) UNSIGNED NOT NULL,
  `currencies_id` INT(10) UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `balance` DECIMAL(18,4) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `numder_UNIQUE` (`numder` ASC) VISIBLE,
  INDEX `fk_accounts_users_idx` (`users_id` ASC) VISIBLE,
  INDEX `fk_accounts_countries1_idx` (`countries_id` ASC) VISIBLE,
  INDEX `fk_accounts_currencies1_idx` (`currencies_id` ASC) VISIBLE,
  INDEX `user_currency` (`users_id` ASC, `currencies_id` ASC) VISIBLE,
  INDEX `currency_user` (`currencies_id` ASC, `users_id` ASC) VISIBLE,
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_accounts_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `billing_system`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_accounts_countries1`
    FOREIGN KEY (`countries_id`)
    REFERENCES `billing_system`.`countries` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_accounts_currencies1`
    FOREIGN KEY (`currencies_id`)
    REFERENCES `billing_system`.`currencies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`output_transactions` (
  `id` BIGINT(19) UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `amount` DECIMAL(18,4) NOT NULL,
  `from_account` BIGINT(19) UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `status` INT(10) UNSIGNED NOT NULL,
  `method` INT(10) UNSIGNED NOT NULL,
  `details` JSON NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_output_transactions_accounts1_idx` (`from_account` ASC) VISIBLE,
  INDEX `fk_output_transactions_transaction_statuses1_idx` (`status` ASC) VISIBLE,
  INDEX `fk_output_transactions_output_methods1_idx` (`method` ASC) VISIBLE,
  INDEX `created_at` (`created_at` ASC) VISIBLE,
  CONSTRAINT `fk_output_transactions_accounts1`
    FOREIGN KEY (`from_account`)
    REFERENCES `billing_system`.`accounts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_output_transactions_transaction_statuses1`
    FOREIGN KEY (`status`)
    REFERENCES `billing_system`.`transaction_statuses` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_output_transactions_output_methods1`
    FOREIGN KEY (`method`)
    REFERENCES `billing_system`.`output_methods` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`input_methods` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `template` JSON NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `method_name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `billing_system`.`output_methods` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `template` JSON NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
