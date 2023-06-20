INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (1, 'user1', 'user1@example.com', 'password1', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (2, 'user2', 'user2@example.com', 'password2', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (3, 'user3', 'user3@example.com', 'password3', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (4, 'user4', 'user4@example.com', 'password4', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (5, 'user5', 'user5@example.com', 'password5', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (6, 'user6', 'user6@example.com', 'password6', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (7, 'user7', 'user7@example.com', 'password7', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (8, 'user8', 'user8@example.com', 'password8', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (9, 'user9', 'user9@example.com', 'password9', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (10, 'user10', 'user10@example.com', 'password10', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (11, 'user11', 'user11@example.com', 'password11', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (12, 'user12', 'user12@example.com', 'password12', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (13, 'user13', 'user13@example.com', 'password13', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (14, 'user14', 'user14@example.com', 'password14', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (15, 'user15', 'user15@example.com', 'password15', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (16, 'user16', 'user16@example.com', 'password16', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (17, 'user17', 'user17@example.com', 'password17', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (18, 'user18', 'user18@example.com', 'password18', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (19, 'user19', 'user19@example.com', 'password19', 1, NULL);

INSERT INTO account (account_id, account_username, account_email, account_password, account_level, account_ban_until)
VALUES (20, 'user20', 'user20@example.com', 'password20', 1, NULL);


update account set account_level = FLOOR(DBMS_RANDOM.VALUE(1, 101));

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
VALUES (15, 1, 'mage', 'Ryze', 0, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (16, 2, 'assassin', 'Talon', 1, 0, 0, 0, 1);

INSERT INTO champion (champion_id, champion_difficulty, champion_role, champion_moniker, champion_jungle, champion_top, champion_bottom, champion_support, champion_mid)
VALUES (17, 3, 'tank', 'Ornn', 0, 1, 0, 0, 0);

INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (1,'Tear of the Goddess','A starting item that provides bonus mana and increases maximum mana on spell cast.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (2,'Infinity Edge','A legendary item that grants bonus critical strike chance and increases critical strike damage.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (4,'Guardian Angel','An item that revives the user upon death with a portion of their health and mana.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (5,'Bloodthirster','A lifesteal item that grants bonus attack damage and provides a shield that absorbs incoming damage.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (6,'Trinity Force','A versatile item that grants bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (7,'Sunfire Aegis','A tank item that provides bonus health and armor');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (8,'Rod of Ages','A scaling item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (9,'Rapid Firecannon','A ranged item that grants bonus attack speed');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (10, 'Dead Man''s Plate','A tank item that provides bonus health');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (11,'Hextech Rocketbelt','Some ad item');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (12,'Morellonomicon','Some ap item');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (14, 'Essence reaver', 'A legendary item that provides bonus attack damage, critical strike chance, and cooldown reduction.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (15,'Luden''s echo', 'Really good ap item. Has activation.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (20,'Hunter''s Machete', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (21,'Stalker''s Blade', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (22,'Tiamat', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (23,'Titanic Hydra', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (24,'Sterak''s Gage', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (38,'Doran''s Shield', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (40,'Thornmail', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (41,'Warmog''s armor', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (42,'Randuin''s omen', 'description');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (49,'Ravenous Hydra','A legendary item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (52,'Black Cleaver','A legendary item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (53,'Spellthief''s Edge','A starting item for support champions that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (54,'Ardent Censer','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (55,'Redemption','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (56,'Mikael''s Blessing','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (57,'Zeke''s Convergence','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (58,'Doran''s Ring','A starting item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (59,'Luden''s Echo','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (60,'Rabadon''s Deathcap','A legendary item that provides a large bonus to ability power and increases the effectiveness of other ability power items.');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (61,'Zhonya''s Hourglass','A legendary item that provides bonus ability power');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (62,'Void Staff','A legendary item that provides bonus ability power and magic penetration');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (63,'Doran''s Blade','A starting item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (64,'Eclipse','A legendary item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (65,'Youmuu''s Ghostblade','A legendary item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (66,'Edge of Night','A legendary item that provides bonus attack damage');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (67,'Lord Dominik''s Regards','A legendary item that provides bonus attack damage and bonus armor penetration');
INSERT INTO ITEM (ID_ITEM, NAZIV_ITEM, OPIS_ITEM) VALUES (68, 'Ninja Tabi', 'A legendary item that provides bonus armor and reduces incoming damage from basic attacks.');

commit;
