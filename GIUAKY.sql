create database DANGKIHOC
USE DANGKIHOC
--Cau 1
create TABLE SINHVIEN
( MaSV char(12) not null primary key,
HoTen nvarchar(20) not null,
Lop char(7) not null,
GioiTinh bit not null,
NgaySinh date not null)

create TABLE HOCPHAN
( MaHP char(20) not null primary key,
TenHP varchar(20) not null,
SoTinChi int not null)
create TABLE DANGKYHOC 
(SoDK char(20) not null primary key,
MaSV varchar(50) not null,
MaHP char(20) not null,
ThoiGianDK DATE not null,
HocKy int not null,
NamHoc int not null,
HocPhi int not null)
Alter table DANGKYHOC
add constraint FK_SINHVIEN Foreign key (MaSV) references SINHVIEN (MaSV)
Alter table DANGKYHOC
add constraint FK_HOCPHAN Foreign key (MaHP) references HOCPHAN (MaHP)
--CAU 2
INSERT INTO SINHVIEN
VALUES
('191121521145', 'MAI QUYNH TRAM', '45K211', 1, '24-06-2001'),
('191121521146', 'LE DANG HAI AU', '45K211', 1, '15-9-2001'),
('191121521147', 'LE VAN TAM', '45K211', 0, '04-02-2001'),
('191121521148', 'DO THI TIEN', '45K211', 1, '12-06-2001'),
('191121521149', 'LE XUAN QUY', '45K211', 0, '2-4-2001')
INSERT INTO HOCPHAN
(
INSERT INTO DANGKYHOC
VALUES
('001','191121521145','HP111','2-2-2020',2,'2019-2020',10.000),
('002','191121521146','HP112','1-2-2020',2,'2019-2020',10.000),
('003','191121521147','HP111','2-2-2020',2,'2019-2020',10.000),
('004','191121521148','HP114','1-2-2020',2,'2019-2020',10.000),
('005','191121521149','HP112','2-2-2020',2,'2019-2020',10.000)