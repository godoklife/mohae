create table `mohaemohae`.`booking`(
	bookingno bigint unsigned primary key auto_increment not null,
    bookingpeopleamount int1 not null,			-- 인원수
    bookingdatetime datetime default now(),		-- 예약 시간
    memberno int unsigned,						-- 예약한 사람의 mno FK
    foreign key(memberno) references member(memberno) on update cascade	
);