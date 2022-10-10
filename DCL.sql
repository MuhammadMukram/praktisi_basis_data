CREATE USER 'developer'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON tugas_basis_data.* TO 'developer'@'localhost' WITH GRANT OPTION;

CREATE USER 'dosen'@'localhost' IDENTIFIED BY 'dosen1';
GRANT INSERT,UPDATE,DELETE,SELECT ON tugas_basis_data.* TO 'dosen'@'localhost';

CREATE USER 'mahasiswa'@'localhost' IDENTIFIED BY 'siswa';
GRANT SELECT ON tugas_basis_data.* TO 'mahasiswa'@'localhost' FLUSH;


/*
Jadi dibuatkan 3 user dikarenakan untuk menjadi contoh jika user dosen maka dia bisa CRUD kedalam 
database dimana CRUD digunakan untuk melihat, mengubah, menghapus, dan membuat data baru dan untuk 
mahasiswa diberikan previlage untuk melihat database saja sedangkan untuk developer mendapatkan semua akses command sql 
di database ini saja.
*/
