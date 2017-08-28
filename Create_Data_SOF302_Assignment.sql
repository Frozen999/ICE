﻿USE SOF302_Assignment

CREATE TABLE USERS (
	USERNAME VARCHAR(50) PRIMARY KEY NOT NULL,
	PASSWORD VARCHAR(50) NOT NULL,
	FULLNAME NVARCHAR(50) NOT NULL
);

CREATE TABLE DEPARTS (
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NAME NVARCHAR(50) NOT NULL,
);

CREATE TABLE STAFFS (
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NAME NVARCHAR(50) NOT NULL,
	GENDER BIT NOT NULL,
	BIRTHDAY DATE NOT NULL,
	PHOTO VARCHAR(50) DEFAULT 'default-avatar.png',
	EMAIL VARCHAR(50) NOT NULL,
	PHONE VARCHAR(20) NOT NULL,
	SALARY INT DEFAULT 0,
	NOTES NVARCHAR(255),
	DEPARTID INT NOT NULL 
	
	FOREIGN KEY (DEPARTID) REFERENCES DEPARTS(ID)
);

CREATE TABLE TYPE(
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NAME NVARCHAR(50) NOT NULL
);

CREATE TABLE RECORDS (
	ID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	TYPEID INT NOT NULL,
	REASON NVARCHAR(255) NOT NULL,
	DATE DATETIME NOT NULL,
	STAFFID INT NOT NULL

	FOREIGN KEY (TYPEID) REFERENCES TYPE(ID),
	FOREIGN KEY (STAFFID) REFERENCES STAFFS(ID)
);

INSERT INTO USERS
VALUES
('haipb' , 'haipb' , N'Phan Bá Hải'),
('kietpp' , 'kietpp' , N'Phan Phú Kiệt'),
('syth' , 'syth' , N'Trần Hữu Sỹ'),
('khangtt' , 'khangtt' , N'Trần Thanh Khang')

INSERT INTO DEPARTS(NAME)
VALUES
(N'Giám Đốc'),
(N'Kế Toán'),
(N'Phát Triển Sản Phẩm'),
(N'Nhân Sự'),
(N'Quản Lý Kho'),
(N'IT')

INSERT INTO STAFFS(NAME, GENDER, BIRTHDAY, EMAIL, PHONE, SALARY, DEPARTID)
VALUES
(N'Phan Bá Hải' , 1, '1997-01-31' , 'haipb@sakadream.me' , '0984637262' , '8000000' , 1),
(N'Phan Phú Kiệt' , 1, '1997-03-15' , 'kietpp@sakadream.me' , '0937281902' , '7500000' , 2),
(N'Trần Hữu Sỹ' , 1, '1997-08-12' , 'syth@sakadream.me' , '0987182718' , '7000000' , 3),
(N'Trần Thanh Khang' , 1, '1997-04-21' , 'khangtt@sakadream.me' , '0123758473' , '6500000' , 4),
(N'Trương Thành Tài' , 1, '1997-10-04' , 'taitt@sakadream.me' , '01264738209' , '5000000' , 5),
(N'Phùng Văn Na Rích' , 1, '1997-02-17' , 'richpvn@sakadream.me' , '0989384932' , '7000000' , 6)

INSERT INTO TYPE(NAME)
VALUES
(N'Khen Thưởng'),
(N'Kỉ Luật')

INSERT INTO RECORDS(TYPEID, REASON, DATE, STAFFID)
VALUES
(1, N'Thành tích làm việc suất sắc tháng 1 / 2017' , '2017-01-19' , 3)