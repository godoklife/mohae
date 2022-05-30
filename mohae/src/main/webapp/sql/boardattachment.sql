create table `mohaemohae`.`boardattachment`(
	boardattachmentno bigint unsigned primary key auto_increment,
    boardattachmentname varchar(255) not null,
    boardno int unsigned not null,
    foreign key(boardno) references board(boardno) on delete cascade
);