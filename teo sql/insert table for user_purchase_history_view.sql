-- Insert into user_account
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (1, 'user1', 'user1@email.com', 'password1');
INSERT INTO user_account(user_account_id, user_account_username, user_account_email, user_account_password) VALUES (2, 'user2', 'user2@email.com', 'password2');

-- Insert into payment_method
INSERT INTO payment_method(payment_method_id, payment_method_name) VALUES (1, 'Credit Card'); 
INSERT INTO payment_method(payment_method_id, payment_method_name) VALUES (2, 'PayPal');

-- Insert into predmet
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (1, 'Lux', 'Mage champion', 'champion');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (2, 'Zed', 'Assassin champion', 'champion');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (3, 'Lux Star Guardian', 'Epic skin for Lux', 'skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (4, 'Championship Zed', 'Legendary skin for Zed', 'skin');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (5, 'Star Guardian Lux', 'Chroma for Star Guardian Lux skin', 'chroma');
INSERT INTO predmet(predmet_id, predmet_name, predmet_description, predmet_type) VALUES (6, 'Championship Zed', 'Chroma for Championship Zed skin', 'chroma');


-- Insert into champion

INSERT INTO champion(champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid, predmet_id)
VALUES (1, 2, 'mage', 'Lux', 0, 0, 1, 0, 1, 1);
INSERT INTO champion(champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid, predmet_id)
VALUES (2, 3, 'assassin', 'Zed', 0, 1, 0, 0, 1, 2);

-- Insert into skin
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (1, 1, 'Lux Star Guardian', 'epic', 0, 3);
INSERT INTO skin(champion_id, skin_id, skin_name, skin_rarity, skin_legacy, predmet_id)
VALUES (2, 2, 'Championship Zed', 'legendary', 0, 4);

-- Insert into chroma
INSERT INTO chroma(skin_id, chroma_id, chroma_name, predmet_id)
VALUES (1, 1, 'Guardian Lux Cosmic', 5);
INSERT INTO chroma(skin_id, chroma_id, chroma_name, predmet_id)
VALUES (2, 2, 'Championship Zed Gold', 6);


-- Insert into purchase
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (1, 1, 1, 1);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (2, 2, 2, 1);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (3, 1, 3, 2);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (4, 2, 4, 2);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (5, 1, 5, 2);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (6, 1, 1, 2);
INSERT INTO purchase(purchase_id, payment_method_id, predmet_id, user_account_buyer) VALUES (7, 1, 6, 1);
