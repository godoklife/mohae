create table `mohaemohae`.`review`(
	reviewno bigint unsigned primary key auto_increment not null,
    reviewlike boolean not null,		-- 0 : 역따봉, 1 : 따봉
    memberid varchar(32) not null,
    memberno int unsigned not null,
    planno int unsigned not null,
	foreign key(memberno) references member(memberno) on delete cascade,	-- memberno가 사라지면 평점은 필요가 없으므로 삭제.
    foreign key(planno) references plan(planno) on update cascade
);