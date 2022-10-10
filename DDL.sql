CREATE DATABASE tugas_basis_data;
USE tugas_basis_data;
CREATE TABLE `course` (
  `course_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `duration` INT(11) NOT NULL,
  PRIMARY KEY (`course_id`)
);

CREATE TABLE `students` (
  `student_id` VARCHAR(10) NOT NULL,
  `full_name` VARCHAR(255) DEFAULT NULL,
  `address` VARCHAR(255) DEFAULT NULL,
  `major` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
);

CREATE TABLE `schedule` (
  `schedule_id` INT(11) AUTO_INCREMENT NOT NULL,
  `tanggal` DATE NOT NULL,
  `jam` TIME NOT NULL,
  `student_id` VARCHAR(10) NOT NULL,
  `course_id` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `student_id` (`schedule_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `schedule_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  CONSTRAINT `schedule_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
);
