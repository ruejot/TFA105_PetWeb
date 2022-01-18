CREATE TABLE testpetting.MEMBERS (
	  MEMBER_ID	INT NOT NULL comment '流水編號',
    NAME varchar(25) NOT NULL comment '會員姓名',
    MOBILE varchar(10) NOT NULL comment '手機',
    PHONE varchar(20) comment '電話',
    ADDRESS varchar(50) not null comment '地址',
    `DATE` TIMESTAMP comment "註冊日期",
    EMAIL varchar(50) UNIQUE not null comment '電子信箱',
    `PASSWORD` varchar(25) not null comment '密碼',
    INTRO varchar(250) comment '簡介',
	  NICKNAME varchar(25) comment '暱稱',
    PHOTO blob comment '大頭貼',
    PRIMARY KEY (MEMBER_ID)
  );

  CREATE TABLE testpetting.FOLLOW(
  
    FRIENDSHIP_ID INT NOT NULL AUTO_INCREMENT comment '流水編號' ,
    MEMBER_ID INT comment '會員ID',
    FOLLOWEE INT comment '對象會員ID',
    FRIENDSHIP varchar(1) comment '關係(G/B)',
    constraint FK_FOLLOW_MEMBERID foreign key (MEMBER_ID) references testpetting.MEMBERS (MEMBER_ID),
    constraint FK_FOLLOW_FOLLOWEE foreign key (FOLLOWEE) references testpetting.MEMBERS (MEMBER_ID),
    primary key (FRIENDSHIP_ID)
  );

CREATE TABLE testpetting.BUS(

  BUS_ID INT NOT NULL AUTO_INCREMENT comment '商家ID',
  NAME varchar(25) UNIQUE not null comment '商家名稱',
  PHONE varchar(25) NOT NULL comment '電話',
  ADDRESS varchar(50) NOT NULL comment '地址',
  TAX_ID varchar(8) NOT NULL comment '統編',
  DATE TIMESTAMP NOT NULL comment '註冊日期',
  ACCOUNT varchar(25) UNIQUE NOT NULL comment '帳號',
  PASSWORD varchar(25) NOT NULL comment '密碼',
  INTRO varchar(250) comment '簡介',
  PHOTO blob comment '大頭貼',
  FB varchar(30),
  IG varchar(30),
  WEBSITE varchar(30) comment '官方網站',
  PRIMARY KEY (BUS_ID)
);


  CREATE TABLE testpetting.TRACK_BUS(

    BUSFOLLOW_ID INT NOT NULL AUTO_INCREMENT comment '流水編號',
    MEMBER_ID INT comment '會員ID',
    BUS_ID INT comment '商家ID'
    constraint FK_TRACKBUS_MEMBERID foreign key (MEMBER_ID) references testpetting.MEMBERS (MEMBER_ID),
    constraint FK_TRACKBUS_BUSID foreign key (BUS_ID) references testpetting.BUS (BUS_ID),
    primary key (BUSFOLLOW_ID)
  );

