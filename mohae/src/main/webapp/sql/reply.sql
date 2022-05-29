CREATE TABLE `mohaemohae`.`reply`(
	replyno BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,	-- [ PK ]
    replycontent varchar(500) NOT NULL,		-- 리플 내용
    replydatetime datetime default now(),	-- 리플 작성 일시
    replycategory int unsigned,				-- 덧덧글 구분용 필드(없을시 일반 덧글)
    memberno int unsigned not null,
    boardno int unsigned not null,
    foreign key(memberno) references member(memberno) on update cascade,
	foreign key(boardno) references board(boardno) on delete cascade
);