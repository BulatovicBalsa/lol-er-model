-- Inserts for user_account
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (1, 'User1', 'user1@example.com', 'password1');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (2, 'User2', 'user2@example.com', 'password2');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (3, 'User3', 'user3@example.com', 'password3');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (4, 'User4', 'user4@example.com', 'password4');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (5, 'User5', 'user5@example.com', 'password5');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (6, 'User6', 'user6@example.com', 'password6');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (7, 'User7', 'user7@example.com', 'password7');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (8, 'User8', 'user8@example.com', 'password8');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (9, 'User9', 'user9@example.com', 'password9');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (10, 'User10', 'user10@example.com', 'password10');

-- Inserts for payment_method
INSERT INTO payment_method VALUES (1, 'Credit Card');
INSERT INTO payment_method VALUES (2, 'PayPal');
INSERT INTO payment_method VALUES (3, 'Bank Transfer');
INSERT INTO payment_method VALUES (4, 'Crypto');
INSERT INTO payment_method VALUES (5, 'Cash');
INSERT INTO payment_method VALUES (6, 'Debit Card');
INSERT INTO payment_method VALUES (7, 'Google Pay');
INSERT INTO payment_method VALUES (8, 'Apple Pay');
INSERT INTO payment_method VALUES (9, 'Gift Card');
INSERT INTO payment_method VALUES (10, 'Wire Transfer');

-- Inserting data into champion
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

-- Inserts for skin
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

-- Inserting data into ward
INSERT INTO ward VALUES (1, 'Ward1');
INSERT INTO ward VALUES (2, 'Ward2');
INSERT INTO ward VALUES (3, 'Ward3');
INSERT INTO ward VALUES (4, 'Ward4');
INSERT INTO ward VALUES (5, 'Ward5');
INSERT INTO ward VALUES (6, 'Ward6');
INSERT INTO ward VALUES (7, 'Ward7');
INSERT INTO ward VALUES (8, 'Ward8');
INSERT INTO ward VALUES (9, 'Ward9');
INSERT INTO ward VALUES (10, 'Ward10');

-- Inserting data into chroma
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

-- Inserts for predmet
-- Inserting data into predmet
INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (1, 'Akali', 'Akali, the Rogue Assassin', 'Champion', 1, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (2, 'Ahri', 'Ahri, the Nine-Tailed Fox', 'Champion', 2, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (3, 'Ashe', 'Ashe, the Frost Archer', 'Champion', 3, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (4, 'Braum', 'Braum, the Heart of the Freljord', 'Champion', 4, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (5, 'Nautilus', 'Nautilus, the Titan of the Depths', 'Champion', 5, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (6, 'Jax', 'Jax, Grandmaster at Arms', 'Champion', 6, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (7, 'Teemo', 'Teemo, the Swift Scout', 'Champion', 7, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (8, 'Lux', 'Lux, the Lady of Luminosity', 'Champion', 8, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (9, 'Darius', 'Darius, the Hand of Noxus', 'Champion', 9, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (10, 'Jhin', 'Jhin, the Virtuoso', 'Champion', 10, null, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (11, 'Silverfang Akali', 'Legendary skin for Akali', 'Skin', 1, 1, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (12, 'Popstar Ahri', 'Epic skin for Ahri', 'Skin', 2, 2, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (13, 'Sherwood Forest Ashe', 'Common skin for Ashe', 'Skin', 3, 3, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (14, 'Dragonslayer Braum', 'Epic skin for Braum', 'Skin', 4, 4, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (15, 'AstroNautilus', 'Legendary skin for Nautilus', 'Skin', 5, 5, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (16, 'Mecha Kingdoms Jax', 'Epic skin for Jax', 'Skin', 6, 6, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (17, 'Omega Squad Teemo', 'Legendary skin for Teemo', 'Skin', 7, 7, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (18, 'Elementalist Lux', 'Ultimate skin for Lux', 'Skin', 8, 8, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (19, 'Dunkmaster Darius', 'Epic skin for Darius', 'Skin', 9, 9, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (20, 'High Noon Jhin', 'Epic skin for Jhin', 'Skin', 10, 10, null, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (21, 'Ward1', 'Ward item 1', 'Ward', null, null, null, 1);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (22, 'Ward2', 'Ward item 2', 'Ward', null, null, null, 2);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (23, 'Ward3', 'Ward item 3', 'Ward', null, null, null, 3);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (24, 'Ward4', 'Ward item 4', 'Ward', null, null, null, 4);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (25, 'Ward5', 'Ward item 5', 'Ward', null, null, null, 5);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (26, 'Ward6', 'Ward item 6', 'Ward', null, null, null, 6);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (27, 'Ward7', 'Ward item 7', 'Ward', null, null, null, 7);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (28, 'Ward8', 'Ward item 8', 'Ward', null, null, null, 8);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (29, 'Ward9', 'Ward item 9', 'Ward', null, null, null, 9);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (30, 'Ward10', 'Ward item 10', 'Ward', null, null, null, 10);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (31, 'Silverfang Akali - Chroma 1', 'Chroma item 1', 'Chroma', 1, 1, 1, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (32, 'Silverfang Akali - Chroma 2', 'Chroma item 2', 'Chroma', 1, 1, 2, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (33, 'Popstar Ahri - Chroma 1', 'Chroma item 3', 'Chroma', 2, 2, 3, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (34, 'Popstar Ahri - Chroma 2', 'Chroma item 4', 'Chroma', 2, 2, 4, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (35, 'Sherwood Forest Ashe - Chroma 1', 'Chroma item 5', 'Chroma', 3, 3, 5, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (36, 'Sherwood Forest Ashe - Chroma 2', 'Chroma item 6', 'Chroma', 3, 3, 6, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (37, 'Dragonslayer Braum - Chroma 1', 'Chroma item 7', 'Chroma', 4, 4, 7, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (38, 'Dragonslayer Braum - Chroma 2', 'Chroma item 8', 'Chroma', 4, 4, 8, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (39, 'AstroNautilus - Chroma 1', 'Chroma item 9', 'Chroma', 5, 5, 9, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (40, 'AstroNautilus - Chroma 2', 'Chroma item 10', 'Chroma', 5, 5, 10, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (41, 'Mecha Kingdoms Jax - Chroma 1', 'Chroma item 11', 'Chroma', 6, 6, 11, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (42, 'Mecha Kingdoms Jax - Chroma 2', 'Chroma item 12', 'Chroma', 6, 6, 12, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (43, 'Omega Squad Teemo - Chroma 1', 'Chroma item 13', 'Chroma', 7, 7, 13, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (44, 'Omega Squad Teemo - Chroma 2', 'Chroma item 14', 'Chroma', 7, 7, 14, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (45, 'Elementalist Lux - Chroma 1', 'Chroma item 15', 'Chroma', 8, 8, 15, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (46, 'Elementalist Lux - Chroma 2', 'Chroma item 16', 'Chroma', 8, 8, 16, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (47, 'Dunkmaster Darius - Chroma 1', 'Chroma item 17', 'Chroma', 9, 9, 17, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (48, 'Dunkmaster Darius - Chroma 2', 'Chroma item 18', 'Chroma', 9, 9, 18, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (49, 'High Noon Jhin - Chroma 1', 'Chroma item 19', 'Chroma', 10, 10, 19, null);

INSERT INTO predmet (predmet_id, predmet_name, predmet_description, predmet_type, predmet_champion_id, predmet_skin_id, predmet_chroma_id, predmet_ward_id)
VALUES (50, 'High Noon Jhin - Chroma 2', 'Chroma item 20', 'Chroma', 10, 10, 20, null);

-- Inserts for pricelist
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (1, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (2, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (3, '01-JAN-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (4, '01-JAN-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (5, '01-JAN-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (6, '01-JAN-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (7, '01-JAN-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (8, '01-JAN-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (9, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (10, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (11, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (12, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (13, '01-JAN-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (14, '01-JAN-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (15, '01-JAN-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (16, '01-JAN-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (17, '01-JAN-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (18, '01-JAN-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (19, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (20, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (21, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (22, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (23, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (24, '01-JAN-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (25, '01-JAN-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (26, '01-JAN-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (27, '01-JAN-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (28, '01-JAN-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (29, '01-JAN-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (30, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (31, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (32, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (33, '01-JAN-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (34, '01-JAN-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (35, '01-JAN-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (36, '01-JAN-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (37, '01-JAN-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (38, '01-JAN-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (39, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (40, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (41, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (42, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (43, '01-JAN-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (44, '01-JAN-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (45, '01-JAN-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (46, '01-JAN-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (47, '01-JAN-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (48, '01-JAN-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (49, '01-JAN-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (50, '01-JAN-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (1, '01-JUL-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (2, '01-JUL-23', 600);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (3, '01-JUL-23', 700);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (4, '01-JUL-23', 900);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (5, '01-JUL-23', 200);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (6, '01-JUL-23', 100);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (7, '01-JUL-23', 300);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (8, '01-JUL-23', 400);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (9, '01-JUL-23', 500);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (3, '01-FEB-23', 20);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (4, '01-FEB-23', 30);
INSERT INTO pricelist(predmet_id, pricelist_start_date, pricelist_price) VALUES (5, '01-FEB-23', 40);


-- Inserts for purchase
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (1, 1, 1, 1,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (2, 2, 2, 2,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (3, 2, 3, 3,'01-MAR-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (4, 2, 4, 3,'01-MAR-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (5, 2, 5, 5,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (6, 3, 2, 6,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (7, 3, 3, 7,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (8, 3, 2, 1,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (9, 3, 6, 2,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (10, 3, 7, 3,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (11, 2, 8, 8,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (12, 2, 9, 9,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (13, 2, 10, 10,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (14, 2, 3, 3,'01-JUL-23');

-- Inserts for review
INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (1, 'Amazing product! Really enjoyed it.', 9, TO_DATE('2023-07-02', 'YYYY-MM-DD'), 1);

INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (2, 'Very poor quality, did not meet my expectations at all.', 2, TO_DATE('2023-07-03', 'YYYY-MM-DD'), 2);

INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (3, 'Average product, nothing too special about it.', 5, TO_DATE('2023-07-24', 'YYYY-MM-DD'), 3);

INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (4, 'A good product overall, but I think it is a bit overpriced.', 6, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 4);

INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (5, 'Excellent quality! Would highly recommend it to others.', 10, TO_DATE('2023-07-27', 'YYYY-MM-DD'), 5);

INSERT INTO review (review_id, review_text, review_rating, review_date, purchase_id)
VALUES (6, 'The product arrived late and was damaged. Very disappointing.', 1, TO_DATE('2023-07-20', 'YYYY-MM-DD'), 6);
