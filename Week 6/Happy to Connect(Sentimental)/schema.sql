CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(50) NOT NULL,
    `last_name` VARCHAR(50) NOT NULL,
    `username` VARCHAR(50) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(80) NOT NULL,
    `type` ENUM('Primary','Secondary','Higher Education') NOT NULL,
    `location` TEXT NOT NULL,
    `year` YEAR NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(80) NOT NULL,
    `industry` ENUM('Technology','Education','Business') NOT NULL,
    `location` TEXT NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `connections_people` (
    `id` INT AUTO_INCREMENT,
    `user_A` INT NOT NULL,
    `user_B` INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_A`) REFERENCES `users`(`id`),
    FOREIGN KEY(`user_B`) REFERENCES `users`(`id`)
);

CREATE TABLE `connections_companies` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT NOT NULL,
    `company_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `title` TEXT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);

CREATE TABLE `connections_schools` (
    `id` INT AUTO_INCREMENT,
    `user_id` INTEGER NOT NULL,
    `school_id` INTEGER NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE NOT NULL,
    `type` TEXT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
);
