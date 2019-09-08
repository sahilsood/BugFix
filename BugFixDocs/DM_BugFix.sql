SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `bugfix` ;
CREATE SCHEMA IF NOT EXISTS `bugfix` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bugfix` ;

-- -----------------------------------------------------
-- Table `bugfix`.`usermaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`usermaster` (
  `user_id` INT NOT NULL AUTO_INCREMENT ,
  `username` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `user_type` VARCHAR(45) NULL ,
  `user_status` VARCHAR(10) NULL ,
  `last_login` DATETIME NULL ,
  `last_login_ip_address` VARCHAR(45) NULL ,
  PRIMARY KEY (`user_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`country`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`country` (
  `country_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `status` TINYINT NULL ,
  PRIMARY KEY (`country_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`state`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`state` (
  `state_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `status` TINYINT NULL ,
  `country_id` INT NULL ,
  PRIMARY KEY (`state_id`) ,
  INDEX `fk_state_1_idx` (`country_id` ASC) ,
  CONSTRAINT `fk_state_1`
    FOREIGN KEY (`country_id` )
    REFERENCES `bugfix`.`country` (`country_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`city`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`city` (
  `city_id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `status` TINYINT NULL ,
  `state_id` INT NULL ,
  PRIMARY KEY (`city_id`) ,
  INDEX `fk_city_1_idx` (`state_id` ASC) ,
  CONSTRAINT `fk_city_1`
    FOREIGN KEY (`state_id` )
    REFERENCES `bugfix`.`state` (`state_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`userdetail`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`userdetail` (
  `user_id` INT NOT NULL ,
  `name` VARCHAR(45) NULL ,
  `gender` VARCHAR(45) NULL ,
  `dob` DATE NULL ,
  `phone` VARCHAR(45) NULL DEFAULT '' ,
  `mobile` VARCHAR(45) NULL ,
  `email` VARCHAR(45) NULL ,
  `address` VARCHAR(45) NULL ,
  `country_id` INT NULL ,
  `state_id` INT NULL ,
  `city_id` INT NULL ,
  `profile_pic_path` VARCHAR(45) NULL ,
  `pin_code` VARCHAR(10) NULL ,
  PRIMARY KEY (`user_id`) ,
  INDEX `fk_userdetail_2_idx` (`country_id` ASC) ,
  INDEX `fk_userdetail_3_idx` (`state_id` ASC) ,
  INDEX `fk_userdetail_4_idx` (`city_id` ASC) ,
  CONSTRAINT `fk_userdetail_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_2`
    FOREIGN KEY (`country_id` )
    REFERENCES `bugfix`.`country` (`country_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_3`
    FOREIGN KEY (`state_id` )
    REFERENCES `bugfix`.`state` (`state_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_userdetail_4`
    FOREIGN KEY (`city_id` )
    REFERENCES `bugfix`.`city` (`city_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`faqmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`faqmaster` (
  `faq_id` INT NOT NULL AUTO_INCREMENT ,
  `question` VARCHAR(45) NULL ,
  `answer` TEXT NULL ,
  `status` TINYINT NULL ,
  PRIMARY KEY (`faq_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`feedbackmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`feedbackmaster` (
  `feedback_id` INT NOT NULL AUTO_INCREMENT ,
  `feedback` VARCHAR(45) NULL ,
  `feedback_time` DATETIME NULL ,
  `user_id` INT NULL ,
  PRIMARY KEY (`feedback_id`) ,
  INDEX `fk_feedbackmaster_1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_feedbackmaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`questionmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`questionmaster` (
  `question_id` INT NOT NULL AUTO_INCREMENT ,
  `title` TEXT NULL ,
  `body` TEXT NULL ,
  `tags` TEXT NULL ,
  `question_date` DATETIME NULL ,
  `user_id` INT NULL ,
  `votes` INT NULL ,
  PRIMARY KEY (`question_id`) ,
  INDEX `fk_questionmaster_1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_questionmaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`answermaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`answermaster` (
  `answer_id` INT NOT NULL AUTO_INCREMENT ,
  `answer` TEXT NULL ,
  `user_id` INT NULL ,
  `question_id` INT NULL ,
  `is_correct` TINYINT NULL ,
  PRIMARY KEY (`answer_id`) ,
  INDEX `fk_answermaster_1_idx` (`user_id` ASC) ,
  INDEX `fk_answermaster_2_idx` (`question_id` ASC) ,
  CONSTRAINT `fk_answermaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_answermaster_2`
    FOREIGN KEY (`question_id` )
    REFERENCES `bugfix`.`questionmaster` (`question_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`questioncommentmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`questioncommentmaster` (
  `question_comment_id` INT NOT NULL AUTO_INCREMENT ,
  `comment` TEXT NULL ,
  `user_id` INT NULL ,
  `comment_date` DATETIME NULL ,
  `question_id` INT NULL ,
  PRIMARY KEY (`question_comment_id`) ,
  INDEX `fk_questioncommentmaster_1_idx` (`user_id` ASC) ,
  INDEX `fk_questioncommentmaster_2_idx` (`question_id` ASC) ,
  CONSTRAINT `fk_questioncommentmaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_questioncommentmaster_2`
    FOREIGN KEY (`question_id` )
    REFERENCES `bugfix`.`questionmaster` (`question_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`answercommentmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`answercommentmaster` (
  `answer_comment_id` INT NOT NULL AUTO_INCREMENT ,
  `comment` TEXT NULL ,
  `user_id` INT NULL ,
  `comment_date` DATETIME NULL ,
  `answer_id` INT NULL ,
  PRIMARY KEY (`answer_comment_id`) ,
  INDEX `fk_answercommentmaster_1_idx` (`user_id` ASC) ,
  INDEX `fk_answercommentmaster_2_idx` (`answer_id` ASC) ,
  CONSTRAINT `fk_answercommentmaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_answercommentmaster_2`
    FOREIGN KEY (`answer_id` )
    REFERENCES `bugfix`.`answermaster` (`answer_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`userrepomaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`userrepomaster` (
  `user_id` INT NOT NULL ,
  `repo` INT NULL ,
  PRIMARY KEY (`user_id`) ,
  CONSTRAINT `fk_userrepomaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`securitymaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`securitymaster` (
  `security_question_id` INT NOT NULL AUTO_INCREMENT ,
  `question` VARCHAR(255) NULL ,
  `status` TINYINT NULL ,
  PRIMARY KEY (`security_question_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`useraccountsecurity`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`useraccountsecurity` (
  `user_id` INT NOT NULL ,
  `security_question_id` INT NULL ,
  `answer` TEXT NULL ,
  PRIMARY KEY (`user_id`) ,
  INDEX `fk_useraccountsecurity_1_idx` (`security_question_id` ASC) ,
  CONSTRAINT `fk_useraccountsecurity_1`
    FOREIGN KEY (`security_question_id` )
    REFERENCES `bugfix`.`securitymaster` (`security_question_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_useraccountsecurity_2`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`answervotemaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`answervotemaster` (
  `vote_id` INT NOT NULL AUTO_INCREMENT ,
  `is_favour` TINYINT NULL ,
  `answer_id` INT NULL ,
  `user_id` INT NULL ,
  PRIMARY KEY (`vote_id`) ,
  INDEX `fk_answervotemaster_1_idx` (`user_id` ASC) ,
  INDEX `fk_answervotemaster_2_idx` (`answer_id` ASC) ,
  CONSTRAINT `fk_answervotemaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_answervotemaster_2`
    FOREIGN KEY (`answer_id` )
    REFERENCES `bugfix`.`answermaster` (`answer_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`requestmaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`requestmaster` (
  `request_id` INT NOT NULL AUTO_INCREMENT ,
  `request_title` VARCHAR(45) NULL ,
  `description` TEXT NULL ,
  `request_date` DATETIME NULL ,
  `user_id` INT NULL ,
  PRIMARY KEY (`request_id`) ,
  INDEX `fk_requestmaster_1_idx` (`user_id` ASC) ,
  CONSTRAINT `fk_requestmaster_1`
    FOREIGN KEY (`user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bugfix`.`responsemaster`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `bugfix`.`responsemaster` (
  `response_id` INT NOT NULL AUTO_INCREMENT ,
  `request_id` INT NULL ,
  `response` TEXT NULL ,
  `response_date` DATETIME NULL ,
  `response_user_id` INT NULL ,
  PRIMARY KEY (`response_id`) ,
  INDEX `fk_responsemaster_1_idx` (`request_id` ASC) ,
  INDEX `fk_responsemaster_2_idx` (`response_user_id` ASC) ,
  CONSTRAINT `fk_responsemaster_1`
    FOREIGN KEY (`request_id` )
    REFERENCES `bugfix`.`requestmaster` (`request_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_responsemaster_2`
    FOREIGN KEY (`response_user_id` )
    REFERENCES `bugfix`.`usermaster` (`user_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `bugfix` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
