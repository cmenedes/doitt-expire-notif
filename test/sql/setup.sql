@src/sql/teardown.sql
@src/sql/setup.sql
insert into expire_notif_users (
    userschema
   ,useremail
) values (
    'MSCHELL'
   ,'mattyschell@gmail.com'
);
insert into expire_notif_users (
    userschema
   ,useremail
   ,useractive
) values (
    'DROPPEDSCHEMA'
   ,'mattyschell@gmail.com'
   ,'N'
);
insert into expire_notif_users (
    userschema
   ,useremail
   ,useractive
) values (
    'EKAMPTNER'
   ,'mattyschell@gmail.com'
   ,'N'
);
commit;
EXIT