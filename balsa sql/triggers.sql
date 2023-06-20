create or replace trigger add_friendship_trigger
before insert on friend
for each row
declare
begin
    if friendship_pkg.is_trigger_called then
        friendship_pkg.is_trigger_called := FALSE;
    
        insert into friend (friend_1, friend_2)
        values (:NEW.friend_2, :NEW.friend_1);
    else
        friendship_pkg.is_trigger_called := TRUE;
    end if;
end add_friendship_trigger;


create or replace trigger account_journal_trigger 
after insert or delete or update on account
for each row
declare
    journal_row account_journal%ROWTYPE;
begin
    journal_row.journal_id := journal_seq.nextval;
    journal_row.operation_date := CURRENT_DATE;

    if inserting then
        journal_row.operation := 'insert';
        journal_row.account_id := :NEW.account_id;
        journal_row.account_username := :NEW.account_username;
        journal_row.account_email := :NEW.account_email;
        journal_row.account_password := :NEW.account_password;
        journal_row.account_level := :NEW.account_level;
        journal_row.account_ban_until := :NEW.account_ban_until;
        journal_row.region_id := :NEW.region_id;
    elsif updating then
        journal_row.operation := 'update';
        journal_row.account_id := :NEW.account_id;
        journal_row.account_username := :NEW.account_username;
        journal_row.account_email := :NEW.account_email;
        journal_row.account_password := :NEW.account_password;
        journal_row.account_level := :NEW.account_level;
        journal_row.account_ban_until := :NEW.account_ban_until;
        journal_row.region_id := :NEW.region_id;        
    else 
        journal_row.operation := 'delete';
        journal_row.account_id := :OLD.account_id;
    end if;
    insert into account_journal values journal_row;
end account_journal_trigger;
