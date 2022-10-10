-- Buat dan use database-nya 
-- CREATE DATABASE tugas_basis_data;
USE tugas_basis_data;

-- Create new student info record : Di DML

-- List students : Attar
SELECT * FROM students;

-- Update student info record


-- List of schedule on specific student : Mukram
SELECT s.full_name, j.nama FROM students AS s INNER JOIN jadwal AS j ON s.students_id = j.students_id WHERE j.students_id = 1;

-- List of courses : Arif


-- Create / input new schedule for specific student : Arif


-- Edit /update schedule for specific student : Fitrah

