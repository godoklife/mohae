create table `mohaemohae`.`plan`(			-- [ 아직 정확히 어떤 데이타가 필요한지 몰라서 미완성 상태. 추후 보충 요망 ]
	planno int unsigned primary key auto_increment not null,
    planpeoplecount int1 unsigned not null,
    memberno int unsigned,					-- [ FK ]
    foreign key(memberno) references member(memberno) on update cascade	-- 모집글 작성자의 정보 참조용
);