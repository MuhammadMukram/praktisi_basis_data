-- Buat dan use database-nya 
-- CREATE DATABASE tugas_basis_data;
USE tugas_basis_data;

-- Create new student info record : Di DML

-- List students : Attar
SELECT * FROM students;

-- Update student info record
UPDATE students SET full_name = 'Mukram' WHERE id=2;
UPDATE students SET full_name = 'Fitrah' WHERE id=3;
UPDATE students SET full_name = 'Attar', student_id="H071211014", address="Jalan Perintis Kemerdekaan" WHERE id=4;

-- List of schedule on specific student
SELECT s.full_name, j.nama FROM students AS s INNER JOIN jadwal AS j ON s.students_id = j.students_id WHERE j.students_id = 1;

-- List of courses
SELECT course_id,'NAME',duration FROM course;                                           

-- Create / input new schedule for specific student
INSERT INTO jadwal VALUES (12, 'Analisis Perancangan', '2022-10-03', '13:30:00', 3, 4);

-- Edit /update schedule for specific student
UPDATE schedule
SET tanggal = '2022-10-22', jam = '16:00'
WHERE student_id = 'H071211017';
