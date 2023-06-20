INSERT INTO region (region_id, region_short, region_name) VALUES (1, 'eune', 'Europe Nordic and East');
INSERT INTO region (region_id, region_short, region_name) VALUES (2, 'euw', 'Europe West');
INSERT INTO region (region_id, region_short, region_name) VALUES (3, 'na', 'North America');
INSERT INTO region (region_id, region_short, region_name) VALUES (4, 'kr', 'Korea');

commit;

INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (1, '192.168.0.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (2, '10.0.0.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (3, '172.16.0.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (4, '192.0.2.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (5, '198.51.100.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (6, '203.0.113.1', 1);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (7, '192.168.1.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (8, '10.0.0.2', 1);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (9, '172.16.1.1', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (10, '192.0.2.2', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (11, '198.51.100.2', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (12, '203.0.113.2', 1);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (13, '192.168.1.2', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (14, '10.0.0.3', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (15, '172.16.1.2', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (16, '192.0.2.3', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (17, '198.51.100.3', 0);
INSERT INTO ip (ip_id, ip_address, ip_blocked) VALUES (18, '203.0.113.3', 0);

commit;

INSERT INTO server (server_id, server_city, server_country, status, server_address)
VALUES (1, 'Frankfurt', 'Germany', 'Online', (SELECT ip_id FROM ip WHERE ip_address = '192.168.0.1'));

INSERT INTO server (server_id, server_city, server_country, status, server_address)
VALUES (2, 'Amsterdam', 'Netherlands', 'Online', (SELECT ip_id FROM ip WHERE ip_address = '10.0.0.1'));

INSERT INTO server (server_id, server_city, server_country, status, server_address)
VALUES (3, 'Chicago', 'United States', 'Offline', (SELECT ip_id FROM ip WHERE ip_address = '172.16.0.1'));

INSERT INTO server (server_id, server_city, server_country, status, server_address)
VALUES (4, 'Seoul', 'South Korea', 'Online', (SELECT ip_id FROM ip WHERE ip_address = '192.0.2.1'));

with ip_info as (select ip_id, ip_address, ip_blocked from ip)
select * from server s, ip_info ii where s.server_address=ii.ip_id;

commit;

INSERT INTO region_server (server_id, region_id) VALUES (1, 1);
INSERT INTO region_server (server_id, region_id) VALUES (2, 2);
INSERT INTO region_server (server_id, region_id) VALUES (3, 3);
INSERT INTO region_server (server_id, region_id) VALUES (4, 4);

select * from region natural join region_server natural join server;

commit;

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (1, 'user1', 'user1@example.com', 'password1', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (2, 'user2', 'user2@example.com', 'password2', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (3, 'user3', 'user3@example.com', 'password3', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (4, 'user4', 'user4@example.com', 'password4', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (5, 'user5', 'user5@example.com', 'password5', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (6, 'user6', 'user6@example.com', 'password6', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (7, 'user7', 'user7@example.com', 'password7', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (8, 'user8', 'user8@example.com', 'password8', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (9, 'user9', 'user9@example.com', 'password9', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (10, 'user10', 'user10@example.com', 'password10', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (11, 'user11', 'user11@example.com', 'password11', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (12, 'user12', 'user12@example.com', 'password12', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (13, 'user13', 'user13@example.com', 'password13', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (14, 'user14', 'user14@example.com', 'password14', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (15, 'user15', 'user15@example.com', 'password15', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (16, 'user16', 'user16@example.com', 'password16', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (17, 'user17', 'user17@example.com', 'password17', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (18, 'user18', 'user18@example.com', 'password18', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (19, 'user19', 'user19@example.com', 'password19', 1, NULL, 1);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until, region_id)
VALUES (20, 'user20', 'user20@example.com', 'password20', 1, NULL, 1);


update account set account_level= FLOOR(DBMS_RANDOM.VALUE(1, 101));

select * from account;

commit;

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (1, CURRENT_DATE, 'SummonerName1');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (2, CURRENT_DATE, 'SummonerName2');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (3, CURRENT_DATE, 'SummonerName3');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (4, CURRENT_DATE, 'SummonerName4');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (5, CURRENT_DATE, 'SummonerName5');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (6, CURRENT_DATE, 'SummonerName6');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (7, CURRENT_DATE, 'SummonerName7');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (8, CURRENT_DATE, 'SummonerName8');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (9, CURRENT_DATE, 'SummonerName9');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (10, CURRENT_DATE, 'SummonerName10');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (11, CURRENT_DATE, 'SummonerName11');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (12, CURRENT_DATE, 'SummonerName12');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (13, CURRENT_DATE, 'SummonerName13');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (14, CURRENT_DATE, 'SummonerName14');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (15, CURRENT_DATE, 'SummonerName15');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (16, CURRENT_DATE, 'SummonerName16');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (17, CURRENT_DATE, 'SummonerName17');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (18, CURRENT_DATE, 'SummonerName18');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (19, CURRENT_DATE, 'SummonerName19');

INSERT INTO summoner_name (account_id, summoner_name_start_date, summoner_name_name)
VALUES (20, CURRENT_DATE, 'SummonerName20');

select * from account natural join summoner_name;

commit;

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (1, message_seq.nextval, 2, 'Hello!', TO_DATE('2023-06-01', 'YYYY-MM-DD'));

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (2, message_seq.nextval, 1, 'Hi there!', TO_DATE('2023-06-02', 'YYYY-MM-DD'));

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (1, message_seq.nextval, 3, 'How are you?', TO_DATE('2023-06-03', 'YYYY-MM-DD'));

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (3, message_seq.nextval, 1, 'I am fine, thank you!', TO_DATE('2023-06-04', 'YYYY-MM-DD'));

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (5, message_seq.nextval, 3, 'How was your day?', TO_DATE('2023-06-08', 'YYYY-MM-DD'));

INSERT INTO message (message_from, message_number, message_to, message_content, message_date)
VALUES (3, message_seq.nextval, 5, 'It was good, thanks for asking!', TO_DATE('2023-06-09', 'YYYY-MM-DD'));

select * from message where message_to in (1,2) and message_from in (1, 2);

commit;

INSERT INTO report (report_from, report_number, report_to, report_content, report_date)
VALUES (1, report_seq.nextval, 2, 'Player 2 was toxic and exhibited unsportsmanlike behavior.', TO_DATE('2023-06-01', 'YYYY-MM-DD'));

INSERT INTO report (report_from, report_number, report_to, report_content, report_date)
VALUES (2, report_seq.nextval, 3, 'Player 3 intentionally fed the enemy team and ruined the game experience.', TO_DATE('2023-06-02', 'YYYY-MM-DD'));

INSERT INTO report (report_from, report_number, report_to, report_content, report_date)
VALUES (4, report_seq.nextval, 1, 'Player 1 told me to hang myself.', TO_DATE('2023-06-03', 'YYYY-MM-DD'));

INSERT INTO report (report_from, report_number, report_to, report_content, report_date)
VALUES (3, report_seq.nextval, 5, 'Player 5 went AFK and abandoned the match halfway.', TO_DATE('2023-06-04', 'YYYY-MM-DD'));

select * from report;

COMMIT;

INSERT INTO friend (friend_1, friend_2)
VALUES (1, 2);

INSERT INTO friend (friend_1, friend_2)
VALUES (2, 1);

INSERT INTO friend (friend_1, friend_2)
VALUES (3, 4);

INSERT INTO friend (friend_1, friend_2)
VALUES (4, 3);

INSERT INTO friend (friend_1, friend_2)
VALUES (1, 3);

INSERT INTO friend (friend_1, friend_2)
VALUES (3, 1);

INSERT INTO friend (friend_1, friend_2)
VALUES (2, 3);

INSERT INTO friend (friend_1, friend_2)
VALUES (3, 2);

COMMIT;




