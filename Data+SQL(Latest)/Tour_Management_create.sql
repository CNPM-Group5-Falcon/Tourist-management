-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-04-24 01:20:47.404

-- tables
-- Table: ACCOUNT
CREATE TABLE ACCOUNT (
    NAME varchar(max)  NULL,
    PASSWORD nvarchar(max)  NULL,
    FULLNAME nvarchar(max)  NULL,
    BIRTHDAY date  NOT NULL,
    EMAIL nvarchar(max)  NULL,
    PHONE nvarchar(max)  NULL,
    TYPE int  NOT NULL,
    ACCOUNT_AID int  NOT NULL,
    CONSTRAINT ACCOUNT_pk PRIMARY KEY  (ACCOUNT_AID)
);

-- Table: CITY
CREATE TABLE CITY (
    CITYNAME nvarchar(50)  NOT NULL,
    INFO nvarchar(max)  NULL,
    CONSTRAINT CITY_pk PRIMARY KEY  (CITYNAME)
);

-- Table: COMMENT
CREATE TABLE COMMENT (
    CMID int  NOT NULL,
    DATETIME datetime  NULL,
    CONTENT nvarchar(max)  NULL,
    ACCOUNT_AID int  NOT NULL,
	PLACE_NAME nvarchar(100)
    CONSTRAINT COMMENT_pk PRIMARY KEY  (CMID)
);

-- Table: PLACE
CREATE TABLE PLACE (
    PLACE_NAME nvarchar(100)  NOT NULL,
    CITY_CITYNAME nvarchar(50)  NOT NULL,
    DESCRIPTION nvarchar(max)  NOT NULL,
	NUMBER_OF_COMMENT int NOT NULL,
    CONSTRAINT PLACE_pk PRIMARY KEY  (PLACE_NAME)
);

-- Table: SCHEDULE
CREATE TABLE SCHEDULE (
    DATETIME nvarchar(50)  NULL,
    GUIDE_INFO nvarchar(max)  NULL,
    SCHEDULE_ID int  NOT NULL,
	CONTENT nvarchar(max) NOT NULL,
    CONSTRAINT SCHEDULE_pk PRIMARY KEY  (SCHEDULE_ID)
);

-- Table: TOUR
CREATE TABLE TOUR (
    TOUR_TID int  NOT NULL,
    INFO nvarchar(max)  NOT NULL,
    DEPARTURE nvarchar(max)  NOT NULL,
    DESTINATION nvarchar(max)  NOT NULL,
    STARTTIME datetime  NOT NULL,
    DURATION nvarchar(max)  NOT NULL,
    FEE nvarchar(max)  NOT NULL,
	SCHEDULE_ID int  NOT NULL,
    CONSTRAINT TOUR_pk PRIMARY KEY  (TOUR_TID)
);

-- Table: TOUR_DETAIL
CREATE TABLE TOUR_DETAIL (
    TOUR_TID int  NOT NULL,
    CITY_CITYNAME nvarchar(50)  NOT NULL,
    CONSTRAINT TOUR_DETAIL_pk PRIMARY KEY  (TOUR_TID)
);

-- Table: TOUR_REGISTRATION
CREATE TABLE TOUR_REGISTRATION (
    ACT_STA int  NOT NULL,
    PAYMENT int  NOT NULL,
    REGISTIME datetime  NOT NULL,
    TOUR_TID int  NOT NULL,
    ACCOUNT_AID int  NOT NULL,
    CONSTRAINT TOUR_REGISTRATION_pk PRIMARY KEY  (TOUR_TID,ACCOUNT_AID)
);

-- foreign keys
-- Reference: COMMENT_ACCOUNT (table: COMMENT)
ALTER TABLE COMMENT ADD CONSTRAINT COMMENT_ACCOUNT
    FOREIGN KEY (ACCOUNT_AID)
    REFERENCES ACCOUNT (ACCOUNT_AID);


-- Reference: PLACE_CITY (table: PLACE)
ALTER TABLE PLACE ADD CONSTRAINT PLACE_CITY
    FOREIGN KEY (CITY_CITYNAME)
    REFERENCES CITY (CITYNAME);

-- Reference: PLACE_COMMENT (table: PLACE)
ALTER TABLE PLACE ADD CONSTRAINT PLACE_COMMENT
    FOREIGN KEY (PLACE_NAME)
    REFERENCES PLACE (PLACE_NAME);

-- Reference: TOUR_DETAIL_CITY (table: TOUR_DETAIL)
ALTER TABLE TOUR_DETAIL ADD CONSTRAINT TOUR_DETAIL_CITY
    FOREIGN KEY (CITY_CITYNAME)
    REFERENCES CITY (CITYNAME);

-- Reference: TOUR_DETAIL_TOUR (table: TOUR_DETAIL)
ALTER TABLE TOUR_DETAIL ADD CONSTRAINT TOUR_DETAIL_TOUR
    FOREIGN KEY (TOUR_TID)
    REFERENCES TOUR (TOUR_TID);

-- Reference: TOUR_REGISTRATION_ACCOUNT (table: TOUR_REGISTRATION)
ALTER TABLE TOUR_REGISTRATION ADD CONSTRAINT TOUR_REGISTRATION_ACCOUNT
    FOREIGN KEY (ACCOUNT_AID)
    REFERENCES ACCOUNT (ACCOUNT_AID);

-- Reference: TOUR_REGISTRATION_TOUR (table: TOUR_REGISTRATION)
ALTER TABLE TOUR_REGISTRATION ADD CONSTRAINT TOUR_REGISTRATION_TOUR
    FOREIGN KEY (TOUR_TID)
    REFERENCES TOUR (TOUR_TID);

-- Reference: TOUR_SCHEDULE (table:TOUR)
ALTER TABLE TOUR ADD CONSTRAINT TOUR_SCHEDULE
	FOREIGN KEY (SCHEDULE_ID)
	REFERENCES SCHEDULE (SCHEDULE_ID);

-- End of file.

drop table account
drop table city
drop table comment
drop table place
drop table SCHEDULE
drop table TOUR
drop table TOUR_DETAIL
drop table TOUR_REGISTRATION


--Data

insert into ACCOUNT values ('Dung','avb163',N'Phạm Minh Dũng','5/1/1990','dung@gmail.com','915672488',2,501)
insert into ACCOUNT values ('Kien','kiv971',N'Nguyễn Đình Kiên','1980/05/06','kien@gmail.com','(08)73654811',1,502)
insert into ACCOUNT values ('Hung','ehl385',N'Trần Quốc Hùng','9/10/1965','hung@gmail.com','(84)912212789',0,503)
insert into ACCOUNT values ('Thao','jfr76',N'Nguyễn Thị Thanh Thảo','9/1/1990','thao@gmail.com','(08)6183363201',0,504)

--Check data
select * from account


insert into CITY values (N'Đà Nẵng',N'Là thành phố trực thuộc trung ương; có 8 quận, huyện với tổng diện tích là 1285,4 km2; dân số đạt 1.029.000 người; phía Bắc giáp tỉnh Thừa Thiên-Huế, phía Tây và Nam giáp tỉnh Quảng Nam, phía Đông giáp biển Đông')
insert into CITY values (N'Nha Trang',N'Là một thành phố ven biển cũng như trung tâm du lịch thuộc tỉnh Khánh Hòa; được mệnh danh là hòn ngọc của Biển Đông; có diện tích tự nhiên 251 km2; dân số đạt 420.521 người; phía Bắc giáp thị xã Ninh Hòa, phía Nam giáp huyện Cam Lâm, phía Tây giáp huyện Diên Khánh, phía Đông giáp Biển Đông có huyện đảo Trường Sa')
insert into CITY values (N'Tỉnh Quảng Bình',N'Là tỉnh duyên hải thuộc vùng Bắc Trung Bộ; nằm ở nơi hẹp nhất theo chiều Đông-Tây của lãnh thổ Việt Nam; diện tích 8065.27 km2; dân số đạt 872.925 người')
insert into CITY values (N'Huế',N'Thuộc đồng bằng duyên hải miền Trung; từng là kinh đô của Việt Nam thời kỳ phong kiến; diện tích tự nhiên 71.68 km2; dân số đạt 344,581 người')
insert into CITY values (N'Hội An',N'Là thành phố trực thuộc tỉnh; diện tích 61.4688 km2; dân số 135,450 người; phía đông giáp Biển Đông, phía Tây giáp 2 thị xã Điện Bàn và huyện Duy Xuyên, phía Nam giáp huyện Duy Xuyên, phía Bắc giáp thị xã Điện Bàn')
insert into CITY values (N'Vũng Tàu',N'Là thành phố thuộc tỉnh Bà Rịa - Vũng Tàu; có 42 km bờ biển bao quanh, núi Lớn cao 245 m và núi Nhỏ cao 170 m, có ngọn hải đăng cao 18 m chiếu xa 30 hải lý và có tuổi đời trên 100 năm ')
insert into CITY values (N'Phan Thiết',N'Là thành phố Duyên Hải Cực Nam Trung Bộ trực thuộc tỉnh Bình Thuận; diện tích là 206.45 km2, bờ biển dài 57.40 km; dân số đạt 283,457 người')
insert into CITY values (N'Hạ Long',N'Là thành phố trực thuộc tỉnh Quảng Ninh; diện tích 271.95 km2; bờ biển gần 50 km; phía Đông giáp thành phố Cẩm Phả, phía Tây giáp thị xã Quảng Yên, phía Bắc giáp huyện Hoành Bồ, phía Nam là vịnh Hạ Long')
insert into CITY values (N'Ninh Bình',N'Là một tỉnh nằm ở cửa ngõ cực Nam miền Bắc; diện tích 1,378.1 km2, dân số đạt 927000 người; phía Bắc giáp Hòa Bình, Hà Nam; phía đông giáp Nam Định, phía tây giáp Thanh Hóa, phía Nam giáp biển Đông')
insert into CITY values (N'Phú Quốc',N'Là hòn đảo lớn nhất Việt Nam; trực thuộc tỉnh Kiên Giang; diện tích 589.23 km2; dân số đạt 101407 người; có 22 hòn đảo lớn nhỏ, trong đó đảo Phú Quốc lớn nhất với diện tích 567km2')

select * from city


insert into COMMENT values (301,'1/8/2017',N'Ưu đãi với các dịch vụ mới',501,N'Đà Nẵng')
insert into COMMENT values (302,'4/7/2017',N'Tiết kiệm',503,N'Hạ Long')
insert into COMMENT values (303,'4/30/2017',N'Giá hơi cao',503,N'Hội An')

select * from comment


insert into PLACE values (N'Đà Nẵng',N'Đà Nẵng',N'Ngũ Hành Sơn, Bà Nà, bán đảo Sơn Trà, đèo Hải Vân, sông Hàn thơ, cầu quay Sông Hàn và bãi biển Mỹ Khê đẹp nhất hành tinh',5)
insert into PLACE values (N'Nha Trang',N'Nha Trang',N'Khu giải trí Vinpearl Land, đảo hòn Mun, hòn Tằm và đặc sản nổi tiếng như búa sứa, nem nướng',1)
insert into PLACE values (N'Động Phong Nha',N'Tỉnh Quảng Bình',N'Điểm du lịch hấp dẫn, một trong những hang nước dài nhất thế giới',16)
insert into PLACE values (N'Huế',N'Huế',N'',20)
insert into PLACE values (N'Hội An',N'Hội An',N'Phố cổ Hội An nên thơ',10)
insert into PLACE values (N'Vũng Tàu',N'Vũng Tàu',N'Những cung đường biển đẹp như mơ, ngọn hải đăng nổi tiếng, tượng Chúa giang tay bình yên, những góc phố thơ mộng cùng những món ăn hấp dẫn',6)
insert into PLACE values (N'Phan Thiết',N'Phan Thiết',N'Phố biển Mũi Né, Trường Dục Thanh, Bảo tàng Hồ Chí Minh, Tháp Nước Dinh Vạn Thủy',8)
insert into PLACE values (N'Hạ Long',N'Hạ Long',N'Có 1969 hòn đảo, nổi tiếng nhất là các hòn Lư Hương, Gà Chọi, Cánh Buồm, Mâm Xôi, đảo Ngọc Vừng, Ti Tốp, Tuần Châu',9)
insert into PLACE values (N'Ninh Bình',N'Ninh Bình',N'Thiên nhiên hoang sơ, phong cảnh non nước hữu tình; di sản văn hóa Tràng An, chúa Bái Đính, Tam Cốc - Bích Động, khu bảo tồn thiên nhiên Vân Long, cố đô Hoa Lư và Nhà thờ Đá Phát Diệm',5)
insert into PLACE values (N'Phú Quốc',N'Phú Quốc',N'Mũi Ông Đội, Đá Chào, Bãi Sao với đặc sản danh tiếng cả nước là tiêu sọ, nước mắm, rượu sim, ngọc trai',3)

select * from place


insert into SCHEDULE values (N'Ngày 1',N'Khoa; (08)954688453',201,N'Đà Nẵng - Sơn Trà - Hội An')
insert into SCHEDULE values (N'Ngày 2',N'Khoa; (08)954688453',201,N'Đà Nẵng - Bà Nà')
insert into SCHEDULE values (N'Ngày 3',N'Khoa; (08)954688453',201,N'Đà Nẵng - TP. Hồ Chí Minh')
insert into SCHEDULE values (N'Ngày 1',N'Việt; (08)643190091',202,N'Tp.HCM - Nha Trang - I-Resort')
insert into SCHEDULE values (N'Ngày 2',N'Việt; (08)643190091',202,N'Nha Trang -Hòn Tằm - Vinpearl Land')
insert into SCHEDULE values (N'Ngày 3',N'Việt; (08)643190091',202,N'Nha Trang -Dốc Lết - TP.HCM')
insert into SCHEDULE values (N'Ngày 1',N'Nam; (08)7196220041',203,N'Tp.HCM - Đà Nẵng - Hội An')
insert into SCHEDULE values (N'Ngày 2',N'Nam; (08)7196220041',203,N'Đà Nẵng - Sơn Trà - Bà Nà - Huế')
insert into SCHEDULE values (N'Ngày 3',N'Nam; (08)7196220041',203,N'Huế - La Vang - Động Thiên Đường')
insert into SCHEDULE values (N'Ngày 4',N'Nam; (08)7196220041',203,N'Huế - Tp.HCM')
insert into SCHEDULE values (N'Ngày 1',N'Quang; (08)664792582',204,N'Tp.Hồ Chí Minh - Đà Nẵng')
insert into SCHEDULE values (N'Ngày 2',N'Quang; (08)664792582',204,N'Đà Nẵng - Cù Lao Chàm - Hội An')
insert into SCHEDULE values (N'Ngày 3',N'Quang; (08)664792582',204,N'Đà Nẵng -Bà Nà - Hồ Truồi - Huế')
insert into SCHEDULE values (N'Ngày 4',N'Quang; (08)664792582',204,N'Huế - Tp.HCM')
insert into SCHEDULE values (N'Ngày 1',N'Linh; (08)667985777',205,N'Tp.HCM - Đà Nẵng -Sơn Trà - Hội An')
insert into SCHEDULE values (N'Ngày 2',N'Linh; (08)667985777',204,N'Đà Nẵng - Bà Nà - Lễ Hội Pháo Hoa ')
insert into SCHEDULE values (N'Ngày 3',N'Linh; (08)667985777',204,N'Đà Nẵng - KDL Thần Tài - Tp Hồ Chí Minh')
insert into SCHEDULE values (N'Ngày 1',N'Thành; (08)911557279',206,N'Tp.Hồ Chí Minh - Vũng Tàu')
insert into SCHEDULE values (N'Ngày 2',N'Thành; (08)911557279',206,N'Vũng Tàu - Tp.Hồ Chí Minh')
insert into SCHEDULE values (N'Ngày 1',N'Long; (08)996616322',207,N'Tp.HCM - Phan Thiết - Mũi Né')
insert into SCHEDULE values (N'Ngày 2',N'Long; (08)996616322',207,N'Mũi Né - Tp.HCM')
insert into SCHEDULE values (N'Ngày 1',N'Giang: (08)996744135',208,N'Tp.HCM - Hà Nội - Ninh Bình - Chùa Bái Đính - KDL Tràng An')
insert into SCHEDULE values (N'Ngày 2',N'Giang: (08)996744135',208,N'Hà Nội - Hạ Long')
insert into SCHEDULE values (N'Ngày 3',N'Giang: (08)996744135',208,N'Hạ Long - Yên Tử - Hà Nội')
insert into SCHEDULE values (N'Ngày 4',N'Giang: (08)996744135',208,N'Hà Nội - Tp.HCM')
insert into SCHEDULE values (N'Ngày 1',N'Kiều; (08)989912241',209,N'Tp.HCM - Hà Nội - Ninh Bình - Vân Long')
insert into SCHEDULE values (N'Ngày 2',N'Kiều; (08)989912241',209,N'Ninh Bình - Hạ Long')
insert into SCHEDULE values (N'Ngày 3',N'Kiều; (08)989912241',209,N'Hạ Long - Thủy Phi Cơ - Hà Nội')
insert into SCHEDULE values (N'Ngày 4',N'Kiều; (08)989912241',209,N'Hà Nội - Thung Lũng Hoa Hồ Tây - Tp. Hồ Chí Minh')
insert into SCHEDULE values (N'Ngày 1',N'Hải; (08)995244123',210,N'Tp.HCM - Phú Quốc')
insert into SCHEDULE values (N'Ngày 2',N'Hải; (08)995244123',210,N'Thiên đường nghỉ dưỡng 5 sao - Vinpearl Land')
insert into SCHEDULE values (N'Ngày 3',N'Hải; (08)995244123',210,N'Phú Quốc - Tp.HCM')



insert into TOUR values (101,N'Đà Nẵng-Bà Nà-Sơn Trà-Đà Nẵng',N'Sân bay Tân Sơn Nhất',N'Đà Nẵng','10/05/2017 8:15',N'3 ngày',N'4390000đ',201)
insert into TOUR values (102,N'Nha Trang-Hòn Tằm-Vinpearl Land',N'Sân bay Tân Sơn Nhất',N'Nha Trang','2017/12/05 10:35',N'3 ngày',N'3000000đ',202)
insert into TOUR values (103,N'Đà Nẵng-Bà Nà-Hội An-La Vang-Động Thiên Đường-Huế',N'Sân bay Tân Sơn Nhất',N'Phong Nha','12/18/2017 6:00',N'4 ngày',N'4250000đ',203)
insert into TOUR values (104,N'Đà Nẵng-Bà Nà-Hội An-Sơn Trà-Cù Lao Chàm-Lăng Cô-Hồ Truồi-Huế',N'Sân bay Tân Sơn Nhất',N'Huế','5/18/2017 5:30',N'4 ngày',N'5790000đ',204)
insert into TOUR values (105,N'Đà Nẵng-Bà Nà-Sơn Trà-Hội An-KDL Thần Tài-Lễ hội pháo hoa quốc tế Đà Nẵng',N'Sân bay Tân Sơn Nhất',N'Hội An','5/19/2017 7:25',N'3 ngày',N'5190000đ',205)
insert into TOUR values (106,N'Vũng Tàu',N'Ngã Tư Ga',N'Vũng Tàu','3/8/2017  8:00:00',N'2 ngày',N'690000đ',206)
insert into TOUR values (107,N'Phan Thiết-Công viên tượng cát Forgotten Land',N'Công ty Vietravel',N'Phan Thiết','7/21/2017 7:00',N'2 ngày',N'1790000đ',207)
insert into TOUR values (108,N'Hà Nội-Bái Đính-Tràng An-Hạ Long-Yên Tử',N'Sân bay Tân Sơn Nhất',N'Hạ Long','6/30/2017 5:45',N'4 ngày',N'6800000đ',208)
insert into TOUR values (109,N'Hà Nội-Hành Trình Theo Dấu Chân Kong-Ninh Bình-Vân Long-Hạ Long-Trải Ngiệm Thủy Phi Cơ-Thung Lũng Hoa Hồ Tây-Xích Lô Phố Cổ Hà Nội',N'Sân bay Tân Sơn Nhất',N'Ninh Bình','6/6/2017 6:00',N'4 ngày',N'8600000đ',209)
insert into TOUR values (110,N'Phú Quốc-Vinpearl Resort 5 sao-Đẳng Cấp Mới Trên Đảo Ngọc',N'Sân bay Tân Sơn Nhất',N'Phú Quốc','7/19/2017 10:20',N'3 ngày',N'7400000đ',210)



insert into TOUR_DETAIL values (101,N'Đà Nẵng')
insert into TOUR_DETAIL values (102,N'Nha Trang')
insert into TOUR_DETAIL values (103,N'Tỉnh Quảng Bình')
insert into TOUR_DETAIL values (104,N'Huế')
insert into TOUR_DETAIL values (105,N'Hội An')
insert into TOUR_DETAIL values (106,N'Vũng Tàu')
insert into TOUR_DETAIL values (107,N'Phan Thiết')
insert into TOUR_DETAIL values (108,N'Hạ Long')
insert into TOUR_DETAIL values (109,N'Ninh Bình')
insert into TOUR_DETAIL values (110,N'Tỉnh Kiên Giang')


insert into TOUR_REGISTRATION values (1,8600000,'12/4/2017',109,501)
insert into TOUR_REGISTRATION values (0,3000000,'3/2/2017',102,503)
insert into TOUR_REGISTRATION values (2,0,'8/5/2017',106,502)