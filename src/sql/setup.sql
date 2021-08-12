create table expire_notif_users (
    userid              number generated always as identity
   ,userschema          varchar2(64)
   ,useremail           varchar2(256)
   ,useractive          varchar2(1) default 'Y' 
   ,constraint expire_notif_userspkc primary key (userid)
   ,constraint expire_notif_usersuqc unique (userschema)
);