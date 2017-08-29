-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-08-29 01:05:03.894

-- tables
-- Table: bacsi
CREATE TABLE bacsi (
    mabacsi varchar(50)  NOT NULL IDENTITY,
    hoten varchar(50)  NULL,
    diachi varchar(50)  NULL,
    CONSTRAINT bacsi_pk PRIMARY KEY  (mabacsi)
);

-- Table: benhnhan
CREATE TABLE benhnhan (
    mabenhnhan varchar(50)  NOT NULL,
    hoten varchar(50)  NULL,
    phai bit  NULL,
    ngaysinh datetime  NULL,
    diachi varchar(50)  NULL,
    CONSTRAINT benhnhan_pk PRIMARY KEY  (mabenhnhan)
);

-- Table: phieukham
CREATE TABLE phieukham (
    maphieu varchar(50)  NOT NULL IDENTITY,
    mabenhnhan varchar(20)  NULL,
    bacsidieutri varchar(50)  NULL,
    chuandoan varchar(100)  NULL,
    chiphi int  NULL,
    bacsi_mabacsi varchar(50)  NOT NULL,
    benhnhan_mabenhnhan varchar(50)  NOT NULL,
    CONSTRAINT phieukham_pk PRIMARY KEY  (maphieu)
);

-- foreign keys
-- Reference: phieukham_bacsi (table: phieukham)
ALTER TABLE phieukham ADD CONSTRAINT phieukham_bacsi
    FOREIGN KEY (bacsi_mabacsi)
    REFERENCES bacsi (mabacsi);

-- Reference: phieukham_benhnhan (table: phieukham)
ALTER TABLE phieukham ADD CONSTRAINT phieukham_benhnhan
    FOREIGN KEY (benhnhan_mabenhnhan)
    REFERENCES benhnhan (mabenhnhan);

-- End of file.

