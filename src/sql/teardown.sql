begin
    execute immediate 'drop table expire_notif_users';
exception 
    when others then
    if sqlcode = -942
    then
        null;
    else
        raise;
    end if;
end;
/