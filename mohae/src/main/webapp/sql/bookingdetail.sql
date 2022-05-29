create table bookingdetail(
	bookingdetailno bigint unsigned primary key auto_increment not null,	
    bookingpayamount int not null,			-- 결제 금액
    bookingpaymethod varchar(20) not null, 	-- 결제방법
    bookingpaydatetime datetime default now(),	-- 결제 일시
    planno int unsigned not null,
    bookingno bigint unsigned not null,
    foreign key(planno) references plan(planno) on update cascade,
    foreign key(bookingno) references booking(bookingno) on delete cascade	
		-- 예약번호가 사라지면 상세예약내역도 필요없어지므로 on delete cascade 처리
);