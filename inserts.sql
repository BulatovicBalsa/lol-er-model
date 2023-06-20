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


update account set account_level = FLOOR(DBMS_RANDOM.VALUE(1, 101));
update account set region_id = FLOOR(DBMS_RANDOM.VALUE(1, 5));

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

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (1, 2, 'assassin', 'Akali', 0, 1, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (2, 3, 'mage', 'Ahri', 0, 0, 1, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (3, 1, 'marksman', 'Ashe', 0, 1, 1, 0, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (4, 2, 'support', 'Braum', 0, 1, 0, 1, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (5, 2, 'tank', 'Nautilus', 1, 1, 0, 0, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (6, 3, 'fighter', 'Jax', 1, 1, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (7, 2, 'specialist', 'Teemo', 1, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (8, 3, 'mage', 'Lux', 0, 0, 1, 1, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (9, 2, 'fighter', 'Darius', 1, 1, 0, 0, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (10, 1, 'marksman', 'Jhin', 0, 0, 1, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (11, 2, 'assassin', 'Zed', 1, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (12, 3, 'support', 'Lulu', 0, 0, 0, 1, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (13, 2, 'fighter', 'Fiora', 1, 1, 0, 0, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (14, 3, 'marksman', 'Caitlyn', 0, 1, 1, 0, 0);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (15, 1, 'mage', 'Ahri', 0, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (16, 2, 'assassin', 'Talon', 1, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (17, 3, 'tank', 'Ornn', 0, 1, 0, 0, 0);

commit;

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (1, 1, 'Silverfang Akali', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (2, 2, 'Popstar Ahri', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (3, 3, 'Sherwood Forest Ashe', 'common', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (4, 4, 'Dragonslayer Braum', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (5, 5, 'AstroNautilus', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (6, 6, 'Mecha Kingdoms Jax', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (7, 7, 'Omega Squad Teemo', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (8, 8, 'Elementalist Lux', 'ultimate', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (9, 9, 'Dunkmaster Darius', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (10, 10, 'High Noon Jhin', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (11, 11, 'Championship Zed', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (12, 12, 'Pool Party Lulu', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (13, 13, 'Heartpiercer Fiora', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (14, 14, 'Pulsefire Caitlyn', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (15, 15, 'Arcade Ahri', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (16, 16, 'Blood Moon Talon', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (17, 17, 'Thunder Lord Ornn', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (1, 18, 'KDA Akali', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (2, 19, 'Star Guardian Ahri', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (3, 20, 'PROJECT: Ashe', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (4, 21, 'El Tigre Braum', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (5, 22, 'Worldbreaker Nautilus', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (6, 23, 'Nemesis Jax', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (7, 24, 'Little Devil Teemo', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (1, 25, 'True Damage Akali', 'ultimate', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (1, 26, 'PROJECT: Akali', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (2, 27, 'Arcana Ahri', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (3, 28, 'High Noon Ashe', 'legendary', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (4, 29, 'Arctic Ops Braum', 'epic', 0);

INSERT INTO skin (champion_id, skin_id, skin_name, skin_rarity, skin_legacy)
VALUES (5, 30, 'Worldbreaker Nautilus Prestige Edition', 'mythic', 0);

select * from skin;

commit;

select * from chroma;

-- Chromas for Silverfang Akali
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 1, 1, 'Silverfang Akali - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 1, 2, 'Silverfang Akali - Chroma 2');

-- Chromas for Popstar Ahri
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 2, 3, 'Popstar Ahri - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 2, 4, 'Popstar Ahri - Chroma 2');

-- Chromas for Sherwood Forest Ashe
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 3, 5, 'Sherwood Forest Ashe - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 3, 6, 'Sherwood Forest Ashe - Chroma 2');

-- Chromas for Dragonslayer Braum
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 4, 7, 'Dragonslayer Braum - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 4, 8, 'Dragonslayer Braum - Chroma 2');

-- Chromas for AstroNautilus
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 5, 9, 'AstroNautilus - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 5, 10, 'AstroNautilus - Chroma 2');

-- Chromas for Mecha Kingdoms Jax
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (6, 6, 11, 'Mecha Kingdoms Jax - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (6, 6, 12, 'Mecha Kingdoms Jax - Chroma 2');

-- Chromas for Omega Squad Teemo
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (7, 7, 13, 'Omega Squad Teemo - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (7, 7, 14, 'Omega Squad Teemo - Chroma 2');

-- Chromas for Elementalist Lux
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (8, 8, 15, 'Elementalist Lux - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (8, 8, 16, 'Elementalist Lux - Chroma 2');

-- Chromas for Dunkmaster Darius
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (9, 9, 17, 'Dunkmaster Darius - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (9, 9, 18, 'Dunkmaster Darius - Chroma 2');

-- Chromas for High Noon Jhin
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (10, 10, 19, 'High Noon Jhin - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (10, 10, 20, 'High Noon Jhin - Chroma 2');

-- Chromas for Championship Zed
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (11, 11, 21, 'Championship Zed - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (11, 11, 22, 'Championship Zed - Chroma 2');

-- Chromas for Pool Party Lulu
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (12, 12, 23, 'Pool Party Lulu - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (12, 12, 24, 'Pool Party Lulu - Chroma 2');

-- Chromas for Heartpiercer Fiora
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (13, 13, 25, 'Heartpiercer Fiora - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (13, 13, 26, 'Heartpiercer Fiora - Chroma 2');

-- Chromas for Pulsefire Caitlyn
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (14, 14, 27, 'Pulsefire Caitlyn - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (14, 14, 28, 'Pulsefire Caitlyn - Chroma 2');

-- Chromas for Arcade Ahri
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (15, 15, 29, 'Arcade Ahri - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (15, 15, 30, 'Arcade Ahri - Chroma 2');

-- Chromas for Blood Moon Talon
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (16, 16, 31, 'Blood Moon Talon - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (16, 16, 32, 'Blood Moon Talon - Chroma 2');

-- Chromas for Thunder Lord Ornn
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (17, 17, 33, 'Thunder Lord Ornn - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (17, 17, 34, 'Thunder Lord Ornn - Chroma 2');

-- Chromas for KDA Akali
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 18, 35, 'KDA Akali - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 18, 36, 'KDA Akali - Chroma 2');

-- Chromas for Star Guardian Ahri
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 19, 37, 'Star Guardian Ahri - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 19, 38, 'Star Guardian Ahri - Chroma 2');

-- Chromas for PROJECT: Ashe
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 20, 39, 'PROJECT: Ashe - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 20, 40, 'PROJECT: Ashe - Chroma 2');

-- Chromas for El Tigre Braum
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 21, 41, 'El Tigre Braum - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 21, 42, 'El Tigre Braum - Chroma 2');

-- Chromas for Worldbreaker Nautilus
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 22, 43, 'Worldbreaker Nautilus - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 22, 44, 'Worldbreaker Nautilus - Chroma 2');

-- Chromas for Nemesis Jax
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (6, 23, 45, 'Nemesis Jax - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (6, 23, 46, 'Nemesis Jax - Chroma 2');

-- Chromas for Little Devil Teemo
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (7, 24, 47, 'Little Devil Teemo - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (7, 24, 48, 'Little Devil Teemo - Chroma 2');

-- Chromas for True Damage Akali
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 25, 49, 'True Damage Akali - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 25, 50, 'True Damage Akali - Chroma 2');

-- Chromas for K/DA ALL OUT Ahri
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 26, 51, 'PROJECT: Akali - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (1, 26, 52, 'PROJECT: Akali - Chroma 2');

-- Chromas for High Noon Ashe
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 27, 53, 'Arcana Ahri - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (2, 27, 54, 'Arcana Ahri - Chroma 2');

-- Chromas for Arcanist Braum
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 28, 55, 'High Noon Ashe - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (3, 28, 56, 'High Noon Ashe - Chroma 2');

-- Chromas for Conqueror Nautilus
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 29, 57, 'Arctic Ops Braum - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (4, 29, 58, 'Arctic Ops Braum - Chroma 2');

-- Chromas for God-King Darius
INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 30, 59, 'Worldbreaker Nautilus Prestige Edition - Chroma 1');

INSERT INTO chroma (champion_id, skin_id, chroma_id, chroma_name)
VALUES (5, 30, 60, 'Worldbreaker Nautilus Prestige Edition - Chroma 2');

commit;

