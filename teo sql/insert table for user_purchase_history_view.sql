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
INSERT INTO payment_method(payment_method_id, payment_method_name) VALUES (1, 'Visa');
INSERT INTO payment_method(payment_method_id, payment_method_name) VALUES (2, 'PayPal');
INSERT INTO payment_method(payment_method_id, payment_method_name) VALUES (3, 'MasterCard');

-- Inserts for predmet
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (1, 'Champion1', 'This is Champion1', 'Champion');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (2, 'Skin2', 'This is Skin2', 'Skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (3, 'Chroma3', 'This is Chroma3', 'Chroma');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (4, 'Ward4', 'This is Ward4', 'Ward');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (5, 'Skin5', 'This is Skin5', 'Skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (6, 'Skin6', 'This is Skin6', 'Skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (7, 'Champion7', 'This is Champion7', 'Champion');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (8, 'Champion8', 'This is Champion8', 'Champion');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (9, 'Skin9', 'This is Skin9', 'Skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (10, 'Skin10', 'This is Skin10', 'Skin');

-- Inserts for champion
INSERT INTO champion(champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid, predmet_id)
VALUES (1, 2, 'mage', 'Lux', 0, 0, 1, 0, 1, 1);
INSERT INTO champion(champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid, predmet_id)
VALUES (2, 2,'assassin', 'Zed', 0, 1, 0, 0, 1, 7);
INSERT INTO champion(champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid, predmet_id)
VALUES (3, 2, 'mage', 'Darius', 0, 0, 1, 0, 1, 8);

-- Inserts for skin
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (1, 1, 'Lux Star Guardian', 'epic', 0, 2);
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (2, 2, 'Championship Zed', 'epic', 0, 5);
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (3, 3, 'Darius Guardian', 'legendary', 0, 6);
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (3, 4, 'Darius Skin', 'common', 0, 9);
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (1, 5, 'Lux Skin', 'epic', 0, 10);

-- Inserts for ward
INSERT INTO ward(ward_id, ward_name, predmet_id) VALUES (1, 'Ward1', 4);

-- Inserts for chroma
INSERT INTO chroma(chroma_id,skin_id, chroma_name, predmet_id) VALUES (1,3, 'Chroma3', 3);

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
-- ... Repeat until predmet_id 10

-- Inserts for purchase
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (1, 1, 1, 1,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (2, 2, 2, 2,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (3, 2, 3, 3,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (4, 2, 4, 4,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (5, 2, 5, 5,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (6, 3, 2, 6,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (7, 3, 3, 7,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (8, 3, 2, 1,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (9, 3, 6, 2,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (10, 3, 7, 3,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (11, 2, 8, 8,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (12, 2, 9, 9,'01-JUL-23');
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer,purchase_date) VALUES (13, 2, 10, 10,'01-JUL-23');

