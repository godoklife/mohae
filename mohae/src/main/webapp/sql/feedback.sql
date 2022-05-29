create table `mohaemohae`.`feedback`(
	feedbackno int unsigned primary key auto_increment not null,
    feedbackpoint int1 not null,		-- 사용자가 사이트에 대해 내리는 점수(0~5점)
    feedbackcomment varchar(500),		-- 사이트 사용 후기
    memberno int unsigned,					-- [ FK ]
   foreign key(memberno) references member(memberno) on update cascade
);