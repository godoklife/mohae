CREATE TABLE `mohaemohae`.`member`(
	memberuuid varchar(40) default (uuid()) not null primary key,	-- 계정 고유번호 [ PK ] 	시간 기반 키값 생성으로, 앞자리값만 달라지는 문제 있음;;;
    memberid varchar(32) NOT NULL,			-- 계정 아이디
    memberpassword varchar(32) NOT NULL,	-- 계정 비밀번호
    membernickname varchar(32),				-- 닉네임
    membername varchar(10) NOT NULL,		-- 실명
    membersex boolean NOT NULL,				-- 성별
    memberemail varchar(64) NOT NULL,		-- 이메일 주소
    memberphone varchar(13) NOT NULL,		-- 휴대폰 번호
    memberaddress varchar(200) NOT NULL		-- 주소, 예상 저장 예시 : 06503_서울특별시 서초구 신반포로15길 19_서울특별시 서초구 반포동 2-12_비닐하우스
);

-- 이하 실제 사용한 코드

CREATE TABLE `mohaemohae`.`member`(
	memberno int unsigned not null primary key auto_increment,	-- 계정 고유번호 [ PK ] 
    memberid varchar(32) NOT NULL,			-- 계정 아이디
    memberpassword varchar(32) NOT NULL,	-- 계정 비밀번호
    membernickname varchar(32),				-- 닉네임
    membername varchar(10) NOT NULL,		-- 실명
    membersex boolean NOT NULL,				-- 성별
    memberemail varchar(64) NOT NULL,		-- 이메일 주소
    memberphone varchar(13) NOT NULL,		-- 휴대폰 번호
    memberaddress varchar(200) NOT NULL		-- 주소, 예상 저장 예시 : 06503_서울특별시 서초구 신반포로15길 19_서울특별시 서초구 반포동 2-12_비닐하우스
);

drop table member;

insert into `mohaemohae`.`member` (memberid, memberpassword, membernickname, membername,
membersex, memberemail, memberphone, memberaddress) 
values ('testid', 'testpw', 'PPSS', '김용준', 1, 'testemail@gmail.com', '010-4444-4444', '06503_서울특별시 서초구 신반포로15길 19_서울특별시 서초구 반포동 2-12_비닐하우스');

select memberuuid from `mohaemohae`.`member` where memberid='testid';

select memberno from `mohaemohae`.`member` where memberid='testid';