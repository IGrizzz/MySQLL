CREATE DATABASE skilvulbookstore;

USE skilvulbookstore;

CREATE TABLE penerbit(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50) DEFAULT NULL,
    kota VARCHAR(50) DEFAULT NULL
);

CREATE TABLE penulis(
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50) NULL,
    kota VARCHAR(50) NULL );
    
    CREATE TABLE buku(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        ISBN VARCHAR(50),
        judul VARCHAR(50),
        penulis VARCHAR(50),
        penerbit INT,
        harga INT,
        stock INT,
        CONSTRAINT fk_buku_penulis_id
        FOREIGN KEY(id)
        REFERENCES penulis(id),
        CONSTRAINT fk_buku_penerbit_penerbit
        FOREIGN KEY(penerbit)
        REFERENCES penerbit(id)
);

-- Select Inner Join --
SELECT * FROM buku INNER JOIN penerbit ON buku.penerbit = penerbit.id;

SELECT * FROM buku LEFT JOIN penerbit ON buku.penerbit = penerbit.id;

SELECT * FROM buku RIGHT JOIN penerbit ON buku.penerbit = penerbit.id;

SELECT MAX(harga) FROM buku WHERE stock < 10;

SELECT MIN(harga) FROM buku;

SELECT COUNT(id) from buku WHERE harga < 100000;