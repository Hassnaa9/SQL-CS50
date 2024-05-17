CREATE DATABASE `linkedin`;

USE `linkedin`;

CREATE TABLE `schools`(
    `name` VARCHAR(32),
    `type` VARCHAR(32),
    `location` VARCHAR(32),
    `year` DATE,
    `id` INT
);

CREATE TABLE `companies`(
    `name` VARCHAR(32),
    `industry` VARCHAR(32),
    `location` VARCHAR(32),
    `id` INT
);

CREATE TABLE `users`(
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32),
    `last_name` VARCHAR(32),
    `username` VARCHAR(32),
    `password` VARCHAR(32),
    `school_id` INT,
    `company_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools`(`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies`(`id`)
);
