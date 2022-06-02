create table `mohaemohae`.`plan`( 
  planno int primary key auto_increment ,
    ptitle varchar(500) ,             
    pcontent LONGTEXT ,         
  pcategoryno int,
    memberno int unsigned,                     
    pfile varchar(1000) ,            
    pview int default 0 ,            
    pmapname varchar(50),
    pamount int default 1,   
    pdate datetime default now() ,      
    foreign key( memberno ) references `mohaemohae`.`member`(memberno) ,
    foreign key( pcategoryno ) references pcategory(pcategoryno) on update cascade
    
);
                