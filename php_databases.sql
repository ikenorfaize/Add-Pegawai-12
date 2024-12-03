CREATE DATABASE `daftar-siswa`;

CREATE TABLE `pegawai` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nama` VARCHAR(64) NOT NULL,
    `jabatan` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB;

CREATE TABLE `daftar_siswa`.`calon_siswa` (
    `id` INT NOT NULL AUTO_INCREMENT ,  
    `nama` VARCHAR(64) NOT NULL ,  
    `alamat` VARCHAR(255) NOT NULL ,  
    `jenis_kelamin` VARCHAR(16) NOT NULL ,  
    `agama` VARCHAR(16) NOT NULL ,  
    `sekolah_asal` VARCHAR(64) NOT NULL ,    
    `pegawai_id` INT,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai`(`id`) 
    ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB;

