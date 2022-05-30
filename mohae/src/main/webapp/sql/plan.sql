create table `mohaemohae`.`plan`(			-- [ 아직 정확히 어떤 데이타가 필요한지 몰라서 미완성 상태. 추후 보충 요망 ]
	planno int unsigned primary key auto_increment not null,	-- PK
    planlatitude decimal(16,14),		-- 위도값, 예시) 33.45067375096625, null이 될 수 있음.
    planlongitude decimal(16,13),		-- 경도값, 예시) 126.5706721005115, null이 될 수 있음.
    planpeoplenumber int1 not null,		-- 인원수
    boardno int unsigned not null, 		-- [ FK ] 게시판 번호
    foreign key(boardno) references board(boardno) on delete cascade	-- [ 여행 모집 게시글이 사라지면 같이 지워짐 ] 
);