use captureamoment;

alter table comment
    add constraint comment_PostID_fk foreign key (PostID) references post (PostID);
alter table comment
    add constraint comment_UserID_fk foreign key (UserID) references user (UserID);

alter table media
    add constraint media_PostID_fk foreign key (PostID) references post (PostID);

alter table post
    add constraint post_UserID_fk foreign key (UserID) references user (UserID);

alter table subscription
    add constraint subscription_UserID_fk foreign key (UserID) references user (UserID);
alter table subscription
    add constraint subscription_FollowedID_fk foreign key (FollowedUserID) references user (UserID);
    
alter table tag
    add constraint tag_PostID_fk foreign key (PostID) references post (PostID);
