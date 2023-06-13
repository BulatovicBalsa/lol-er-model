declare 
    total_friends number;
    v_friend_1 friend.friend_1%TYPE;
    v_friend_2 friend.friend_1%TYPE; 
    
    v_friend account%rowtype;
    
    cursor friendly_players is select distinct friend_1 from friend;
    
    cursor friend_list (friend_id friend.friend_1%TYPE) is 
    select friend_2 from friend where friend_1 = friend_id;  
    
    cursor account_data (acc_id account.account_id%TYPE) is
    select * from account where account_id = acc_id;

begin
    OPEN friendly_players;
    LOOP
        total_friends := 1;
        FETCH friendly_players into v_friend_1;
        EXIT WHEN friendly_players%NOTFOUND;

        select * into v_friend from account where account_id = v_friend_1;
        DBMS_OUTPUT.put_line('Player: ' || v_friend.account_username);

        OPEN friend_list(v_friend_1);
        LOOP
            FETCH friend_list into v_friend_2;
            EXIT WHEN friend_list%NOTFOUND;
    
            select * into v_friend from account where account_id = v_friend_2;
            DBMS_OUTPUT.put_line('  Friend ' || total_friends || ': ' || v_friend.account_username);        
            total_friends := total_friends + 1;
        end loop;
        CLOSE friend_list;
    end loop;
    CLOSE friendly_players;
end;