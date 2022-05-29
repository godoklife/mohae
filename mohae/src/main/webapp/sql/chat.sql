CREATE TABLE `mohaemohae`.`chat`(
	chatno BIGINT unsigned NOT NULL AUTO_INCREMENT primary key,	-- [ PK ]
    chatcontent varchar(500) NOT NULL,		-- 공백 채팅은 js단에서 걸러낼것.
	chatdatetime datetime default now(),	-- 채팅 입력 시간 
    ipaddress varchar(40),					-- 궃이 필요한가 싶긴 한데... ipv6의 자릿수가 콜론 포함 최대 39자리
    memberno int unsigned not null,	-- [ FK ]
    foreign key(memberno) references member(memberno) on update cascade	
);