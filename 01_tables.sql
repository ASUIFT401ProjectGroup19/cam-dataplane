create database if not exists captureamoment;
use captureamoment;

drop table if exists `comment`;
create table comment
(
    CommentID   int auto_increment primary key,
    CommentText varchar(500) null,
    ParentID    int          null,
    PostID      int          not null,
    UserID      int          not null
);

drop table if exists `media`;
create table media
(
    MediaID   int auto_increment primary key,
    MediaLink varchar(45) null,
    PostID    int         not null
);

drop table if exists `post`;
create table post
(
    PostID      int auto_increment primary key,
    Description varchar(45) null,
    Date        datetime    not null,
    UserID      int         not null
);

drop table if exists `subscription`;
create table subscription
(
    UserID         int not null,
    FollowedUserID int not null,
    constraint primary key (UserID, FollowedUserID)
);

drop table if exists `user`;
create table user
(
    UserID    int auto_increment primary key,
    FirstName varchar(45)        not null,
    LastName  varchar(45)        not null,
    Email     varchar(45) unique not null,
    Password  varchar(60)        not null
);

drop table if exists `tag`;
create table tag
(
    TagID  int auto_increment primary key,
    TagMsg varchar(60) not null,
    PostID int         not null
);
