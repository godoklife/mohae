CREATE TABLE `mohaemohae`.`board`(
	boardno int unsigned primary key auto_increment not null,
    boardtitle varchar(500) not null,			-- 한글 기준 최대 125자
    boardcontenttype vatchar(50) not null,		-- 게시글 분류
    boardcontent varchar(10000) not null,		-- 게시글 내용
	boardviewcount int unsigned default 0,		-- 게시글 조회수, 기본값 0
    boarddatetime datetime default now(),		-- 게시글 작성 일시
    boardcategory int1 not null,				-- 0~255
    memberno int unsigned,								-- [ FK ]
    boardattachement boolean not null,			
		-- 첨부파일이 없으면 0, 있으면 1 ->> boardattachement table의 boardno를 참조하는 여러 파일명들 불러오기.
    foreign key(memberno) references member(memberno) on update cascade
);