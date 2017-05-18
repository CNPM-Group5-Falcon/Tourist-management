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
    GUIDE_INFO nvarchar(max)  NULL,
    SCHEDULE_ID int  NOT NULL,
	CONTENT nvarchar(max) NOT NULL,
    CONSTRAINT SCHEDULE_pk PRIMARY KEY (SCHEDULE_ID)
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
	TOUR_DETAIL_ID int NOT NULL,
    CONSTRAINT TOUR_DETAIL_pk PRIMARY KEY  (TOUR_DETAIL_ID)
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


insert into SCHEDULE values (N'Khoa; (08)954688453',201,N'Ngày 1: TP.HCM – ĐÀ NẴNG – NGŨ HÀNH SƠN – BÁN ĐẢO SƠN TRÀ (ăn trưa, chiều)

Sáng: Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất ba tiếng.
Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Đà Nẵng.
Đến sân bay Đà Nẵng, Hướng dẫn viên đón đoàn khởi hành tham quan Ngũ Hành Sơn - được ví như hòn non bộ khổng lồ giữa lòng thành phố Đà Nẵng với Động Huyền Không, Chùa Linh Ứng, Chùa Tam Thai, Vọng Hải Đài, … mua sắm quà lưu niệm tại làng nghề điêu khắc đá Non Nước.
Trưa: Dùng cơm trưa.
Tham quan một vòng bán đảo Sơn Trà…viếng Linh Ứng Tự và thưởng ngoạn vẻ đẹp của biển Mỹ Khê (được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).
Quý khách nhận phòng nghỉ ngơi.
Chiều: Dùng cơm chiều. Nghỉ đêm tại Đà Nẵng.
Xe đưa đoàn xem buổi trình diễn pháo hoa giữ hai đội đại diện đến từ Áo và Việt Nam.

Ngày 2: ĐÀ NẴNG – HUẾ – ĐẠI NỘI – ĐÀ NẴNG (ăn sáng, trưa, chiều)
Sáng: Dùng buffet sáng tại khách sạn.
Đoàn khởi hành đến Huế qua đường hầm Hải Vân - hầm đường bộ dài nhất Đông Nam Á.
Tham quan Huế với Đại Nội – Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh, …

Trưa: Dùng cơm trưa.
Tham quan chùa Thiên Mụ – ngôi chùa cổ nhất Cố đô Huế. Đoàn trở về Đà Nẵng.
Chiều: Dùng cơm chiều. Nghỉ đêm tại Đà Nẵng.
Quý khách tự do dạo phố, ngắm các cây cầu nổi tiếng của thành phố Đà Nẵng: cầu Rồng, cầu Sông Hàn, cầu Trần Thị Lý, cầu Thuận Phước... 
Ngày 3: ĐÀ NẴNG – HỘI AN – BÀ NÀ – TP.HCM (ăn sáng, trưa, chiều)

Sáng: Dùng buffet sáng tại khách sạn.
Tham quan Phố Cổ Hội An - di sản văn hoá thế giới với Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng…

Trưa: Dùng cơm trưa.
Khởi hành đến với cao nguyên Bà Nà nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo (chi phí cáp treo tự túc).
Chiều: Dùng cơm chiều. 
Xe tiễn ra sân bay Đà Nẵng, đón chuyến bay về TP.HCM. Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.')
insert into SCHEDULE values (N'Việt; (08)643190090',202,N'Ngày 1: TP.HCM – CAM RANH

Tối: Khởi hành đi Cam Ranh – Nghỉ ngơi trên xe.
Ngày 2: CAM RANH – ĐẢO BÌNH HƯNG – NINH CHỮ (Ăn sáng, trưa, chiều)

Sáng: Đến Cam Ranh.
Đoàn khởi hành đến bãi Kinh -Bình Tiên, đón tàu đến đảo Bình Hưng.
Tham quan bãi Nước Ngọt – bãi tắm, quý khách có thể tắm suối nước ngọt vừa có thể tắm biển tại đây.
Trưa: Dùng cơm trưa.
Đoàn đi tham quan một vòng trên đảo, viếng thăm chùa Bình Hưng, lăng Nam Hải, ngọn Hải Đăng Hòn Chút nơi mà khi đặt chân lên tại đây quý khách chúng ta có thể thấy rỏ được toàn cảnh bình hưng và biển đông.
Tối: Dùng cơm tối. Nghỉ đêm tại Ninh Chữ.
Ngày 3: 
NINH CHỮ – TP.HCM (Ăn sáng, trưa)

Sáng: Dùng bữa sáng. 
Đoàn tham quan vườn nho ông Ba Mọi ăn nho, uống rượu nho miễn phí. Vườn nho có tới 7 loại nho, trong đó 4 loại là nho tươi ăn quả, 3 loại được dùng để làm rượu. Hướng dẫn viên hướng dẫn cho du khách quy trình chăm sóc đến các công đoạn thu hoạch, chế biến rượu nho.
Trưa: Đoàn dùng cơm trưa.
Khởi hành về TP.HCM, kết thúc chương trình tour, chia tay và hẹn gặp lại !')
insert into SCHEDULE values (N'Nam; (08)7196220041',203,N'Ngày 1 : TP.HCM - ĐÀ NẴNG - HỘI AN Số bữa ăn: 2 bữa (trưa, chiều)
Quý khách tham quan danh thắng cảnh Ngũ Hành Sơn: Chùa Linh Ứng, Động Tàng Chơn, Động Hoa Nghiêm, Chùa Non Nước,… Sau đó đoàn dạo một vòng bán đảo Sơn Trà, viếng Chùa Linh Ứng - Chiều xe đưa Quý khách đi tắm biển Mỹ Khê Đà. Sau đó, đoàn đi tham quan Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ… tự do dạo phố đèn lồng nhiều màu sắc và mua những món quà lưu niệm của địa phương, thử tài trong các trò chơi dân gian như đập niêu, hát bài chòi,…. Ăn chiều. Đoàn về lại Đà Nẵng. Nghỉ đêm tại Đà Nẵng. 
Ngày 2 : ĐÀ NẴNG - SƠN TRÀ - BÀ NÀ - HUẾ Số bữa ăn: 3 bữa (sáng, trưa, chiều)
Ăn sáng buffet tại khách sạn. Xe đưa Quý khách tham quan Khu du lịch Bà Nà - Suối Mơ, đến nơi Quý khách đi tuyến cáp treo một dây dài nhất thế giới lên Đỉnh núi Bà Nà (chi phí cáp treo tự túc), tận hưởng không khí se lạnh của “Đà Lạt tại miền Trung”, đoàn tự do tham quan Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour… Tiếp đến, Quý khách đến Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ - Đền nằm trên đĩnh Núi Chúa, nơi thờ Bà Mẫu Thượng Ngàn,… tham quan Lầu chuông, Tháp Linh Phong Tự. Tiếp tục đến khu vui chơi Fantasy ParkĐoàn tiếp tục đi xuyên Hầm Hải Vân. Nghỉ đêm tại Huế. 
Ngày 3 : HUẾ - THÁNH ĐỊA LA VANG - ĐỘNG THIÊN ĐƯỜNG Số bữa ăn: 3 bữa (sáng, trưa, chiều)

Ăn sáng buffet tại khách sạn, Quý khách khởi hành đi Đồng Hới (Quảng Bình), trên đường đi dừng tham quan Thánh Địa La Vang - Một thánh địa quan trọng của người Công giáo Việt Nam thuộc tỉnh Quảng Trị, dừng viếng Nghĩa Trang Liệt Sĩ Trường Sơn. Đến Quảng Bình, ăn trưa, sau đó đoàn tham quan động mới trong quần thể di sản thiên nhiên thế giới Phong Nha - Kẻ Bàng: Động Thiên Đường.
Ngày 4 : HUẾ - TPHCM Số bữa ăn: 2 bữa (sáng, trưa)

Ăn sáng buffet tại khách sạn. Xe đưa Quý khách tham quan Đại Nội - Hoàng cung xưa của 13 vị vua triều Nguyễn, tham quan Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đình,… tiếp tục viếng Chùa Thiên Mụ - Ngôi chùa được xem là biểu tượng xứ Huế và là nơi lưu giữ nhiều cổ vật quý giá không chỉ về mặt lịch sử mà còn cả về nghệ thuật. Ăn trưa. Xe đưa Qúy khách tham quan Lăng Tự Đức - Nơi có phong cảnh sơn thủy hữu tình và được cho là một trong những lăng tẩm có kiến trúc đẹp nhất của các vua chúa nhà Nguyễn.')
insert into SCHEDULE values (N'Quang; (08)664792581',204,N'Ngày 1 : TP.HỒ CHÍ MINH - ĐÀ NẴNG – HỘI AN (Ăn trưa, tối)
Đoàn đi dạo một vòng Bán đảo Sơn Trà, ngắm cảnh cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt - ngôi chùa lớn nhất ở thành phố Đà Nẵng - Nơi đây có tượng Phật Quan Thế Âm cao nhất Việt Nam (67m). Đứng nơi đây, Quý khách sẽ được chiêm ngưỡng toàn cảnh thành phố, núi rừng và biển đảo Sơn Trà một cách hoàn hảo nhất, sau đó đoàn tham quan Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ. Quý khách tự do thưởng ngoạn cảnh đẹp của Đà Nẵng về đêm, ngắm nhìn những cây cầu biểu tượng cho sự phát triển không ngừng của thành phố Đà Nẵng như: Cầu Rồng, Cầu Quay Sông Hàn, cầu Trần Thị Lý, Trung Tâm Thương Mại, Khu phố ẩm thực, Café - Bar – Disco... Nghỉ đêm tại Đà Nẵng
Ngày 2 : ĐÀ NẴNG – LĂNG CÔ - HUẾ (Ăn sáng, trưa, tối)

Xe đưa đoàn đi xuyên Hầm Hải Vân - Hầm đường bộ dài nhất Đông Nam Á khởi hành đi Huế, trên đường đi đoàn dừng tham quan Vịnh Lăng Cô. Đến Huế đoàn tham quan Lăng Khải Định – sự giao hòa kiến truc Đông Tây. Ăn trưa. Chiều đoàn tham quan Đại Nội - Hoàng cung xưa của 13 vị vua triều Nguyễn, tham quan Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đình,… tiếp tục viếng Chùa Thiên Mụ Sau đó xe đưa Quý khách đi xuyên Hầm Hải Vân về lại Đà Nẵng. Thưởng ngoạn cảnh đẹp của Đà Nẵng về đêm, ngắm nhìn những cây cầu biểu tượng cho sự phát triển không ngừng của thành phố Đà Nẵng như: Cầu Rồng, Cầu Quay Sông Hàn, cầu Trần Thị Lý, Trung Tâm Thương Mại, Khu phố ẩm thực, Café - Bar – Disco…. Nghỉ đêm Đà Nẵng 

Ngày 3 : ĐÀ NẴNG – KDL BÀ NÀ - TP. HỒ CHÍ MINH (Ăn sáng)

Quý khách đi tham quan Khu du lịch Bà Nà - Suối Mơ, đến nơi Quý khách đi tuyến cáp treo một dây dài nhất thế giới lên Đỉnh núi Bà Nà (chi phí cáp treo tự túc), tận hưởng không khí se lạnh của “Đà Lạt tại miền Trung”, đoàn tự do đi bộ hoặc di chuyển bằng tàu hỏa leo núi tham quan: Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour… Tiếp đến, Quý khách đến Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ - Đền nằm trên đĩnh Núi Chúa, nơi thờ Bà Mẫu Thượng Ngàn,… tham quan Lầu chuông, Tháp Linh Phong Tự. Sau đó đến khu vui chơi Fantasy Park: với các trò chơi phiêu lưu mới lạ, trải nghiệm cảm giác mạnh như: Vòng Quay Tình Yêu, Phi Công Skiver, Đường Đua Lửa, Ngôi Nhà Ma và Khu trưng bày hơn 40 tượng sáp')
insert into SCHEDULE values (N'Linh; (08)667985777',205,N'Ngày 1: TP.HCM - ĐÀ NẴNG - SƠN TRÀ - HỘI AN (Ăn trưa, chiều)

Quý khách đi ăn trưa tại nhà hàng đặc sản Trần - thưởng thức món “Bánh Tráng Heo Hai Đầu Da”. Chiều xe đưa dạo một vòng Bán đảo Sơn Trà, ngắm cảnh cảng Tiên Sa, viếng chùa Linh Ứng Bãi Bụt - Ngôi chùa lớn nhất ở thành phố Đà Nẵng, nơi có tượng Phật Quan Thế Âm cao nhất Việt Nam (67m). Đứng nơi đây, Quý khách sẽ được chiêm ngưỡng toàn cảnh thành phố, núi rừng và biển đảo Sơn Trà một cách hoàn hảo nhất. Sau đó đi tắm biển Mỹ Khê Đà Nẵng - một trong những bãi biển quyến rũ nhất hành tinh. Chiều xe đưa Quý khách đi tham quan Phố Cổ Hội An: Chùa Cầu, Nhà Cổ Phùng Hưng, Hội Quán Phước Kiến, Cơ sở Thủ Công Mỹ Nghệ
Ngày 2 : ĐÀ NẴNG - KDL BÀ NÀ - LỄ HÔI PHÁO HOA (Ăn sáng + chiều, ăn trưa tự túc tại Bà Nà)

Xe đưa Quý khách đi tham quan Khu du lịch Bà Nà - Suối Mơ, đến nơi Quý khách đi tuyến cáp treo một dây dài nhất thế giới lên Đỉnh núi Bà Nà (chi phí cáp treo tự túc), tận hưởng không khí se lạnh của “Đà Lạt tại miền Trung”, tham quan: Chùa Linh Ứng, Hầm Rượu Debay, vườn hoa Le Jardin D’Amour… Tiếp đến, Quý khách đến Khu Tâm linh mới của Bà Nà viếng Đền Lĩnh Chúa Linh Từ - Đền nằm trên đĩnh Núi Chúa, nơi thờ Bà Mẫu Thượng Ngàn,… tham quan Lầu chuông, Tháp Linh Phong Tự. Sau đó đến khu vui chơi Fantasy Park: với các trò chơi phiêu lưu mới lạ, trải nghiệm cảm giác mạnh như: Vòng Quay Tình Yêu, Phi Công Skiver, Đường Đua Lửa, Ngôi Nhà Ma và Khu trưng bày hơn 40 tượng sáp - Là những nhân vật ca sĩ, diễn viên, nhà khoa học, lãnh tụ nỗi tiếng trên thế giới…Ăn trưa tại Bà Nà tự túc. Quý khách thưởng thức Màn Trình Diễn Pháo Hoa Quốc Tế Đà Nẵng Năm 2017 chủ đề “Tỏa Sáng Ngũ Hành Sơn” kéo dài từ 20:00 – 22:00. 

Ngày 3 : ĐÀ NẴNG - KDL THẦN TÀI - TP. HỒ CHÍ MINH (Ăn sáng, trưa)

Ăn sáng buffet tại khách sạn. Chiều xe đưa Quý khách đến với Công viên Suối khoáng nóng Núi Thần Tài. Tại đây, Quý khách sẽ tắm khoáng nóng tại các hồ khoáng ngoài trời, tự do tham quan các điểm trong khu du lịch, tự túc các chi phí tắm khoáng phòng riêng, tắm bùn, tắm Onsen, tắm Trà - Sữa - Cà Phê - Rượu - Sả. Ăn trưa. Chiều xe đưa đoàn tham quan danh thắng Ngũ Hành Sơn: Chùa Linh Ứng, Động Tàng Chơn, Động Hoa Nghiêm, Chùa Non Nước, Làng Đá Mỹ Nghệ Non Nước. Sau đó đưa Quý khách ra sân bay Đà Nẵng đón chuyến bay trở về Tp.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.')
insert into SCHEDULE values (N'Thành; (08)911557279',206,N'Ngày 1: TP.HCM - VŨNG TÀU Số bữa ăn: 3 bữa

Đến Vũng Tàu Quý khách tham Nhà Úp Ngược du khách sẽ có cảm giác như mình lạc vào một trạm du hành vũ trụ hay đi trên đường cao tốc với một thế giới hoàn toàn bị đảo ngược. Mô hình Nhà úp ngược là một tòa nhà cao 3 tầng, gồm 2 khu vực tham quan và quán cà phê. Buổi chiều, Quý khách tự do tắm biển và khám phá những trò chơi cảm giác mạnh như: dù kéo, lái mô tô nước… (Chi phí tự túc). Hoặc Quý khách tự do khám phá khu du lịch Hồ Mây, trải nghiệm cảm giác ngồi cáp treo ngắm nhìn thành phố Vũng Tàu từ trên cao. Lên đến khu du lịch Quý khách tự do vui chơi giải trí với rất nhiều lựa chọn cho mọi lứa tuổi. Nếu là người năng động và yêu thích các hoạt động ngoài trời thì những dịch vụ vui chơi như thám hiểm rừng nguyên sinh,  xe đạp đôi, cưỡi ngựa… chắc chắn sẽ làm du khách thích thú. Với những khách thích cảm giác nhẹ nhàng, lãng mạn thì du ngoạn bằng xe ngựa, đạp vịt, bơi thuyền, câu cá trên Hồ Mây thực sự là lựa chọn ưu tiên. Bên cạnh đó, nhiều trò chơi khác như: Thuyền cướp biển, Bạch tuộc, Đu quay
Ngày 2 : VŨNG TÀU - TP.HCM Số bữa ăn: 2 bữa

Xe đưa Quý khách tham quan và vãn cảnh tại Tượng Chúa KiTo trên Núi Tao Phùng. Về lại khách sạn quý khách ăn sáng, tự do tắm biển cho đến giờ hẹn trả phòng. 
11:00 Quý khách khởi hành về lại thành phố Hồ Chí Minh, dùng cơm trưa .Tiếp tục hành trình về Tp.HCM Quý khách ghé tham quan Nông Trại Cừu nhìn ngắm những chú cừu đáng yêu to tròn trong bộ lông mềm mại, Quý khách có thể được chạm tay vuốt ve lông cừu, được ôm chúng và dĩ nhiên là sẽ được chụp ảnh kỉ niệm. Trên đường về TP.HCM, Quý khách dừng chân tham quan, mua sắm đặc sản tại Nông Trại Bò Sữa Long Thành.')
insert into SCHEDULE values (N'Long; (08)996616322',207,N'Ngày 1: TP.HCM - MŨI NÉ Số bữa ăn : 03 bữa (sáng, trưa, chiều)

Đến Phan Thiết, Quý khách tham quan Cơ sở Tranh Cát Phi Long, nơi đây nổi tiếng với những bức tranh làm bằng cát mang nhiều chủ đề như thiên nhiên, muông thú, chân dung, danh lam thắng cảnh...Các tác phẩm nghệ thuật này càng ý nghĩa hơn vì được vẽ bởi những anh chị em khiếm thị và khiếm thính. Ăn trưa, nhận phòng khách sạn nghỉ ngơi. Chiều xe đưa Quý khách tham quan Tháp Chàm Poshanư là một nhóm di tích còn sót lại của Vương quốc Chăm Pa xưa. Tháp có phong cách kiến trúc Hòa Lai – một trong những phong cách nghệ thuật cổ của Chămpa. Tiếp đến đoàn tham quan Lâu đài Rượu Vang RD trong khu nghỉ dưỡng Sealink. Ngoài ra Quý khách được nghe giới thiệu về quy trình sản xuất, đóng chai và thưởng thức một trong những loại rượu vang hảo hạng nổi tiếng thế giới được xuất xứ từ Thung Lũng Napa

Ngày 2 : TỰ DO TẮM BIỂN MŨI NÉ - BÀU TRẮNG Số bữa ăn : 03 bữa (sáng, trưa, chiều)

Quý khách tham quan Bàu Trắng - Nằm giữa những triền cát trắng nên Bàu Bà còn được gọi là Bàu Trắng và ngày nay cũng thường được gọi với cái tên Bàu Sen bởi trong hồ khi vào mùa sen nở, phủ kín cả một vùng hồ. Hệ sinh vật ở Bàu Trắng rất phong phú, có nhiều loại cá nước ngọt: cá rô, cá lóc, cá trê, cá trắm cỏ…(tùy theo mùa mà sen nở hay không).  Hồ được bao quanh bởi những triền cát trắng với cái nắng, cái gió được thiên nhiên ban tặng khiến cho hồ đẹp đến tuyệt vời. Từ trên đồi cát nhìn xuống hồ phẳng lặng, xa xa những đồi cát sẫm màu nhấp nhô lên xuống khiến du khách không khỏi trầm trồ, thán phục. Quý khách có thể chọn lựa chơi các trò chơi mạo hiểm như đi xe địa hình hoặc đi xe Jeep khám phá Bàu Trắng (chi phí tự túc). Sau khi ăn tối, xe đưa Qúy khách đến xem chương trình Nhạc Nước "Fisherman Show" đặc sắc.
Ngày 3 : MŨI NÉ – CÔNG VIÊN TƯỢNG CÁT FORGOTTEN LAND – TP HCM Số bữa ăn : 02 bữa (sáng, trưa)

Quý Khách khởi hành đi tham quan Công viên tượng cát Forgotten Land, đây là công viên tượng cát quy mô lớn đầu tiên mới được triển khai tại Bình Thuận với diện tích khoảng 1,3 ha được làm từ 100% cát tự nhiên và nước mang chủ đề cổ tích và truyền thuyết Việt Nam cùng thế giới. Với chủ đề này, các tượng cát sẽ đem lại cho người dân và du khách sự giao thoa của hai nền văn hóa thuần Việt và văn hóa phương Tây qua những câu chuyện kể lại. Những nét tương đồng và những nét độc đáo cũng được khắc họa qua những bức tượng điêu khắc cát được sáng tạo ra từ bàn tay đầy nhiệt huyết các nghệ nhân trên thế giới. Trả phòng khách sạn, đoàn ăn trưa, sau đó xe đưa đoàn khởi hành về Tp.HCM. Trên đường về xe dừng tại Cơ sở sản xuất nước mắm')
insert into SCHEDULE values (N'Giang: (08)996744134',208,N'Ngày 1: Tp. Hồ Chí Minh - Hà Nội - Ninh Bình (Ăn trưa, chiều)
Sáng: Khởi hành đi Ninh Bình, tham quan chùa Bái Đính - ngôi chùa có nhiều kỷ lục nhất Việt Nam (ngôi chùa có diện tích rộng nhất – Tượng phật bằng đồng lớn nhất Việt Nam).
Trưa: Ăn trưa tại nhà hàng. Đoàn xuôi thuyền đi dọc theo suối giữa cánh đồng lúa thăm khu du lịch Tràng An nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí, quý khách đi đò thăm Hang sáng, Hang tối, Hang nấu rượu và tìm hiểu văn hóa lịch sự nơi đây
 
Ngày 2: Hà Nội - Yên Tử - Hạ Long (Ăn sáng, trưa, chiều)
 Dùng điểm tâm. Đoàn khởi hành đến Hạ Long, trên đường dừng chân tham quan núi rừng Yên Tử, lên núi bằng cáp treo (chi phí cáp treo tự túc), tham quan chùa Hoa Yên, Bảo Tháp, Trúc Lâm Tam Tổ, Hàng Tùng 700 tuổi…xuống núi tham quan Thiền Viện Trúc Lâm, quả cầu Như Ý nặng 6 tấn được xếp kỷ lục guiness Việt Nam.

Ngày 3: Hạ Long - Hà Nội (Ăn sáng, trưa, chiều)
Dùng điểm tâm. Xuống thuyền ngoạn cảnh Vịnh Hạ Long – Di sản thiên nhiên thế giới với hàng ngàn đảo đá có hình dạng kỳ vị - chiêm ngưỡng vẻ đẹp trau chuốt, lộng lẫy của động Thiên Cung, vẻ đẹp siêu nhiên của hòn Đỉnh Hương, Gà Chọi, Chó Đá…

Ngày 4: Hà Nội - Tp. Hồ Chí Minh (Ăn sáng, trưa)
Sáng: Dùng điểm tâm. Viếng Lăng Bác (trừ ngày thứ hai, thứ sáu bảo trì Lăng). Tham quan Phủ Chủ Tịch, ao cá, nhà sàn Bác Hồ, Chùa Một Cột, Bảo Tàng Hồ Chí Minh. Tham quan Văn Miếu – Quốc Tử Giám.
Trưa: Dùng cơm trưa. Tham quan chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch')
insert into SCHEDULE values (N'Kiều; (08)989912242',209,N'Ngày 1: TP.HCM - (NỘI BÀI) HÀ NỘI – CỐ ĐÔ HOA LƯ – THUNG NHAM Số bữa ăn: 2 bữa (trưa, chiều)

Quý Khách tham quan Cố đô Hoa Lư là quần thể di tích quốc gia đặc biệt quan trọng của Việt Nam, là một trong 4 vùng lõi của quần thể di sản thế giới Tràng An đã được UNESCO công nhận. Quý khách tiếp tục tham quan Vườn chim Thung Nham - một khung cảnh thiên nhiên thơ mộng, hữu tình với rừng cây, hồ nước, vườn cây ăn trái và hệ thống hang động tuyệt đẹp. Đoàn tham quan Hang; Động Tiên; tiếp tục đến tham quan Vườn cây ăn quả, thưởng thức những trái khế, táo ngọt ngay tại vườn và đặc biệt tham quan cây Duối ngàn năm. Đến bến thuyền, đoàn tham quan và chụp ảnh cùng Cây đa di chuyển, Quý khách lên thuyền tham quan Thung Chim - đặc biệt có 2 loài chim quý hiếm được ghi trong sách đỏ là hằng hạc và phượng hoàng, một trong những linh vật trong bộ tứ Long Ly Quy Phượng

Ngày 2 : NINH BÌNH – HẠ LONG Số bữa ăn: 3 bữa ( sáng, trưa, chiều )

Quý khách ra bến tàu, xuống tàu du ngoạn trên Vịnh Hạ Long - Thắng cảnh thiên nhiên tuyệt đẹp và vô cùng sống động, được UNESCO công nhận là di sản thiên nhiên Thế giới năm 1994. Đoàn tham quan và khám phá sự lộng lẫy, nguy nga của Động Thiên Cung. Từ trên tàu ngắm nhìn các hòn đảo lớn nhỏ trong Vịnh Hạ Long: Hòn Gà Chọi, Hòn Lư Hương. Buổi tối, tự do tham quan Khu Du Lịch Đảo Tuần Châu (chi phí tự túc), xem biểu diễn cá heo - hải cẩu - sư tử biển, xiếc thú, biểu diễn vũ điệu nhạc nước và ánh sáng laser, game trong nhà, xe điện dụng, xe ngựa hào hoa, chiếu phim 5D, triễn lãm hoa đăng, biễu diễn ca múa nhạc. Hay khám phá Sun World Ha Long Park (chi phí tự túc) trên Núi Ba Đèo bằng cáp treo Nữ Hoàng từ bờ biển Bãi Cháy, cáp treo đạt 2 kỷ lục thế giới 

Ngày 3 : HẠ LONG – HÀ NỘI – TỨ PHỦ SHOW Số bữa ăn: 3 bữa ( sáng, trưa, chiều )

Quý khách khởi hành về Hà Nội, trên đường tham quan Núi Yên Tử (chi phí cáp treo tự túc)- Thắng cảnh thiên nhiên còn lưu giữ nhiều di tích lịch sử với mệnh danh “đất tổ Phật giáo Việt Nam”. Sau đó đoàn đi cáp treo viếng Chùa Hoa Yên - Ngôi chùa to và đẹp, nằm trên lưng chừng núi ở độ cao 516m, thăm Tháp Tổ. Tiếp tục khởi hành về Hà Nội, buổi chiều quý khách xem chương trình “Tứ Phủ” - vở diễn là một chuyến du hành vào cõi tâm linh ấn tượng với sự kết hợp những nét đẹp đầy tinh tế. Chương trình gồm 3 chương: Chầu Đệ Nhị - Ông Hoàng Mười - Cô Bé Thượng Ngàn.

Ngày 4 : HÀ NỘI - TP.HCM Số bữa ăn: 2 bữa (sáng, trưa)

Quý khách dạo quanh Hồ Hoàn Kiếm ngắm Tháp Rùa, Đền Ngọc Sơn, Cầu Thê Húc. Đoàn tiếp tục tham quan và tìm hiểu cuộc đời và sự nghiệp của vị cha già dân tộc tại Lăng Hồ Chủ Tịch: Nhà Sàn Bác Hồ, Bảo Tàng Hồ Chí Minh, Chùa Một Cột. Sau đó xe đưa quý khách tham quan mua sắm tại Vincom Mega Mall Royal City (chi phí tự túc) - Được thiết kế theo phong cách Hoàng gia Châu Âu, là quần thể trung tâm thương mại và vui chơi giải trí đầu tiên tại Việt Nam phát triển theo mô hình Mega Mall chuẩn quốc tế.')
insert into SCHEDULE values (N'Hải; (08)995244122',210,N'Ngày 1: TP. HỒ CHÍ MINH - PHÚ QUỐC (Số bữa ăn: 1 bữa)

Quý khách khởi hành viếng Chùa Sư Muôn (Hùng Long Tự) - Để cầu nguyện sự an lành và hạnh phúc đến với gia đình. Sau đó đoàn khởi hành đi xuyên rừng nguyên sinh khám phá Suối Tranh - Bắt đầu từ dãy Hàm Ninh xanh thẳm, từ trong khe núi nhiều dòng suối nhỏ len lỏi chảy qua rừng cây, khe đá để cùng hoà mình vào dòng chính tạo nên dòng Suối Tranh hiền hoà. Tiếp tục, đoàn tham quan Làng Chài Hàm Ninh, Vườn Tiêu, Nhà Thùng làm nước mắm, Cơ Sở nuôi cấy Ngọc Trai. Quý khách ghé thăm Dinh Cậu 

Ngày 2 : THIỀN VIỆN HỘ QUỐC - BÃI SAO (Số bữa ăn: 2 bữa (bữa chiều tự túc))

Quý khách đến viếng Thiền Viện Trúc Lâm Hộ Quốc - ngôi chùa đẹp và lớn nhất đảo ngọc, với nhiều công trình như: Đại hùng bảo điện, lầu chuông, lầu trống, nhà Tổ với vật liệu bằng gỗ lim đưa về từ Nam Phi và đá nguyên thủy có giá trị sử dụng từ 700 - 1.000 năm… Với khung cảnh hoang sơ, yên tĩnh, tạo nên một khung cảnh thiên nhiên đặc sắc đầy vẻ tôn nghiêm và thanh tịnh. Tiếp đến đoàn vào Bãi Sao. 
Ngày 3 : PHÚ QUỐC - TP. HỒ CHÍ MINH (Số bữa ăn: 1 bữa)

Sau khi ăn sáng. Tự do tắm biển nghỉ ngơi tại resort. Đến giờ trả phòng khách sạn.  Sau đó, xe đưa Quý khách ra sân bay Phú Quốc đáp chuyến bay trở về Tp.HCM. Chia tay Quý khách và kết thúc chương trình du lịch tại sân bay Tân Sơn Nhất.')



insert into TOUR values (101,N'Du Lịch Miền Trung - Huế dịp lễ hội pháo hoa Quốc tế Đà Nẵng 2017 ',N'Sân bay Tân Sơn Nhất',N'Đà Nẵng','10/05/2017 8:15',N'3 ngày',N'4800000đ',201)
insert into TOUR values (102,N'Du Lịch Đảo Bình Hưng - Ninh Chữ ',N'Sân bay Tân Sơn Nhất',N'Nha Trang','2017/12/05 10:35',N'3 ngày',N'1500000đ',202)
insert into TOUR values (103,N'Đà Nẵng - Bà Nà - Hội An - La Vang - Động Thiên Đường - Huế ',N'Sân bay Tân Sơn Nhất',N'Phong Nha','12/18/2017 6:00',N'4 ngày',N'6400000đ',203)
insert into TOUR values (104,N'Đà Nẵng - Bà Nà - Sơn Trà - Hội An - Lăng Cô - Huế - Đà Nẵng',N'Sân bay Tân Sơn Nhất',N'Huế','5/18/2017 5:30',N'3 ngày',N'4600000đ',204)
insert into TOUR values (105,N'Đà Nẵng - Bà Nà - Sơn Trà - Hội An - KDL Thần Tài - Lễ hội pháo hoa quốc tế Đà Nẵng',N'Sân bay Tân Sơn Nhất',N'Hội An','5/19/2017 7:25',N'3 ngày',N'5300000đ',205)
insert into TOUR values (106,N'Vũng Tàu - Nhà Úp Ngược - Khu Du Lịch Hồ Mây - Trại Cừu',N'Ngã Tư Ga',N'Vũng Tàu','3/8/2017  8:00:00',N'2 ngày',N'180000đ',206)
insert into TOUR values (107,N'Phan Thiết - Công viên tượng cát Forgotten Land ',N'Công ty Vietravel',N'Phan Thiết','7/21/2017 7:00',N'3 ngày',N'2600000đ',207)
insert into TOUR values (108,N'Du Lịch Miền Bắc - Ninh Bình',N'Sân bay Tân Sơn Nhất',N'Hạ Long','6/30/2017 5:45',N'4 ngày',N'6300000đ',208)
insert into TOUR values (109,N'Hà Nội - Ninh Bình - Cố Đô Hoa Lư - Vườn Chim Thung Nham - Yên Tử - Hạ Long',N'Sân bay Tân Sơn Nhất',N'Ninh Bình','6/6/2017 6:00',N'4 ngày',N'6600000đ',209)
insert into TOUR values (110,N'Phú Quốc - Khách sạn 3 sao - Bãi Sao - Thiền Viện Trúc Lâm Hộ Quốc',N'Sân bay Tân Sơn Nhất',N'Phú Quốc','7/19/2017 10:20',N'2 ngày',N'4000000đ',210)



insert into TOUR_DETAIL values (101,N'Đà Nẵng',301)
insert into TOUR_DETAIL values (102,N'Nha Trang',302)
insert into TOUR_DETAIL values (103,N'Tỉnh Quảng Bình',303)
insert into TOUR_DETAIL values (104,N'Huế',304)
insert into TOUR_DETAIL values (105,N'Hội An',305)
insert into TOUR_DETAIL values (106,N'Vũng Tàu',306)
insert into TOUR_DETAIL values (107,N'Phan Thiết',307)
insert into TOUR_DETAIL values (108,N'Hạ Long',308)
insert into TOUR_DETAIL values (109,N'Ninh Bình',309)
insert into TOUR_DETAIL values (110,N'Phú Quốc',310)


insert into TOUR_REGISTRATION values (1,8600000,'12/4/2017 8:10',109,501)
insert into TOUR_REGISTRATION values (0,3000000,'3/2/2017 19:15',102,503)
insert into TOUR_REGISTRATION values (2,0,'8/5/2017 23:12',106,502)