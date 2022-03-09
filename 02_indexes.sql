use captureamoment;


create index PostID_idx on comment (PostID);
create index UserID_idx on comment (UserID);

create index PostID_idx on media (PostID);

create index UserID_idx on post (UserID);

